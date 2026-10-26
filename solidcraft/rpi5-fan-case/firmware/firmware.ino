#include <ESP8266WiFi.h>
#include <ElegantOTA.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

constexpr int board_led = 2;  // GPIO2 — onboard LED (ESP-01S)
constexpr int pwm_pin   = 1;  // GPIO1 — Tx
constexpr int PWM_FREQ  = 25000;  // 25 kHz, standard PC fan PWM frequency
constexpr int PWM_RANGE = 255;    // analogWriteRange

// OTA server on 81, fan control server on 80
ESP8266WebServer ota_server(81);
ESP8266WebServer server(80);

int fan_speed = 0;  // 0-100 percent

void set_fan(int percent) {
    fan_speed = constrain(percent, 0, 100);
    // NPN transistor inverts: HIGH from ESP pulls FAN_PWM low.
    // Invert so 100% speed = full PWM high on the fan wire.
    int duty = map(fan_speed, 0, 100, PWM_RANGE, 0);
    analogWrite(pwm_pin, duty);
}

// ---------- API handlers ----------

// GET /api/speed  → {"speed": 42}
void handle_get_speed() {
    server.send(200, "application/json",
        "{\"speed\":" + String(fan_speed) + "}");
}

// POST /api/speed  body: speed=42  OR  JSON {"speed":42}
void handle_set_speed() {
    int requested = -1;

    if (server.hasArg("speed")) {
        requested = server.arg("speed").toInt();
    } else if (server.hasArg("plain")) {
        // simple JSON parse without a library
        String body = server.arg("plain");
        int idx = body.indexOf("\"speed\"");
        if (idx == -1) idx = body.indexOf("speed");
        if (idx != -1) {
            int colon = body.indexOf(':', idx);
            if (colon != -1) requested = body.substring(colon + 1).toInt();
        }
    }

    if (requested < 0 || requested > 100) {
        server.send(400, "application/json",
            "{\"error\":\"speed must be 0-100\"}");
        return;
    }

    set_fan(requested);
    server.send(200, "application/json",
        "{\"speed\":" + String(fan_speed) + "}");
}

// GET /api/status → chip info + speed
void handle_status() {
    String chip_id = String(ESP.getChipId(), HEX);
    String ip      = WiFi.localIP().toString();
    String body =
        "{\"speed\":"    + String(fan_speed)  +
        ",\"chip_id\":\"" + chip_id           + "\"" +
        ",\"ip\":\""      + ip               + "\"" +
        ",\"rssi\":"      + String(WiFi.RSSI()) + "}";
    server.send(200, "application/json", body);
}

// ---------- Web UI ----------

const char INDEX_HTML[] PROGMEM = R"rawhtml(<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Fan Controller</title>
<style>
  :root {
    --bg: #0f172a; --card: #1e293b; --accent: #38bdf8;
    --text: #f1f5f9; --muted: #94a3b8; --danger: #f87171;
    --radius: 12px;
  }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body {
    background: var(--bg); color: var(--text);
    font-family: system-ui, sans-serif;
    min-height: 100vh; display: flex;
    align-items: center; justify-content: center; padding: 1rem;
  }
  .card {
    background: var(--card); border-radius: var(--radius);
    padding: 2rem; width: 100%; max-width: 400px;
    box-shadow: 0 8px 32px #0008;
  }
  h1 { font-size: 1.4rem; margin-bottom: .25rem; }
  .sub { color: var(--muted); font-size: .85rem; margin-bottom: 1.75rem; }
  .speed-display {
    font-size: 4rem; font-weight: 700; text-align: center;
    color: var(--accent); line-height: 1; margin-bottom: .25rem;
  }
  .speed-label { text-align: center; color: var(--muted); font-size: .85rem; margin-bottom: 1.5rem; }
  input[type=range] {
    width: 100%; accent-color: var(--accent);
    height: 6px; cursor: pointer; margin-bottom: 1.5rem;
  }
  .presets { display: flex; gap: .5rem; margin-bottom: 1.5rem; flex-wrap: wrap; }
  .preset {
    flex: 1; padding: .5rem; border: 1px solid var(--accent);
    background: transparent; color: var(--accent);
    border-radius: 8px; cursor: pointer; font-size: .85rem;
    transition: background .15s;
  }
  .preset:hover { background: var(--accent); color: var(--bg); }
  .preset.off { border-color: var(--danger); color: var(--danger); }
  .preset.off:hover { background: var(--danger); color: #fff; }
  .status {
    background: #0f172a; border-radius: 8px; padding: .75rem 1rem;
    font-size: .8rem; color: var(--muted); line-height: 1.8;
  }
  .dot {
    display: inline-block; width: 8px; height: 8px;
    border-radius: 50%; background: #22c55e; margin-right: .4rem;
    animation: pulse 2s infinite;
  }
  @keyframes pulse { 0%,100%{opacity:1} 50%{opacity:.4} }
</style>
</head>
<body>
<div class="card">
  <h1>&#x1F4BF; Fan Controller</h1>
  <div class="sub" id="ip-label">rpi5-fan-controller</div>

  <div class="speed-display" id="speed-val">--</div>
  <div class="speed-label">% fan speed</div>

  <input type="range" id="slider" min="0" max="100" value="0"
         oninput="preview(this.value)" onchange="applySpeed(this.value)">

  <div class="presets">
    <button class="preset off" onclick="applySpeed(0)">Off</button>
    <button class="preset" onclick="applySpeed(25)">25%</button>
    <button class="preset" onclick="applySpeed(50)">50%</button>
    <button class="preset" onclick="applySpeed(75)">75%</button>
    <button class="preset" onclick="applySpeed(100)">Max</button>
  </div>

  <div class="status">
    <span class="dot"></span><span id="status-text">Connecting...</span>
  </div>
</div>

<script>
let currentSpeed = 0;

function preview(v) {
  document.getElementById('speed-val').textContent = v;
}

async function applySpeed(v) {
  v = parseInt(v);
  document.getElementById('slider').value = v;
  preview(v);
  try {
    const r = await fetch('/api/speed', {
      method: 'POST',
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: 'speed=' + v
    });
    const d = await r.json();
    currentSpeed = d.speed;
  } catch(e) {
    document.getElementById('status-text').textContent = 'Error: ' + e;
  }
}

async function pollStatus() {
  try {
    const r = await fetch('/api/status');
    const d = await r.json();
    currentSpeed = d.speed;
    document.getElementById('speed-val').textContent = d.speed;
    document.getElementById('slider').value = d.speed;
    document.getElementById('ip-label').textContent =
      'IP: ' + d.ip + '  |  RSSI: ' + d.rssi + ' dBm';
    document.getElementById('status-text').textContent =
      'Chip: ' + d.chip_id + '  |  Speed: ' + d.speed + '%';
  } catch(e) {
    document.getElementById('status-text').textContent = 'Offline';
  }
}

pollStatus();
setInterval(pollStatus, 3000);
</script>
</body>
</html>
)rawhtml";

void handle_root() {
    server.send_P(200, "text/html", INDEX_HTML);
}

// ---------- setup / loop ----------

void setup() {
    // Serial.begin(115200);
    pinMode(pwm_pin, FUNCTION_3);
    analogWriteFreq(PWM_FREQ);
    analogWriteRange(PWM_RANGE);
    //pinMode(pwm_pin, OUTPUT);
    analogWrite(pwm_pin, 255);  // fan off at boot

    pinMode(board_led, OUTPUT);
    digitalWrite(board_led, HIGH);  // off at boot (active-low)

    WiFi.mode(WIFI_STA);
    WiFi.hostname("rpi5-fan-controller");

    auto get_ssid_name = []() -> String {
        String chip_id = String(ESP.getChipId(), HEX);
        return "rpi5-fan-controller-" + chip_id;
    };

    WiFiManager wm;
    bool res = wm.autoConnect(get_ssid_name().c_str());
    if (!res) {
        // Serial.println("Failed to connect");
    } else {
        // Serial.println("Connected: " + WiFi.localIP().toString());
    }

    // Fan control API
    server.on("/",           HTTP_GET,  handle_root);
    server.on("/api/speed",  HTTP_GET,  handle_get_speed);
    server.on("/api/speed",  HTTP_POST, handle_set_speed);
    server.on("/api/status", HTTP_GET,  handle_status);
    server.begin();

    // OTA
    ota_server.begin();
    ElegantOTA.begin(&ota_server);

    // Serial.println("Fan controller ready");
}

void update_led() {
    static unsigned long last_toggle = 0;

    if (fan_speed == 0) {
        digitalWrite(board_led, HIGH);  // off when fan stopped
        return;
    }

    // 100% → 100 ms interval, 1% → 1900 ms interval
    unsigned long interval = map(fan_speed, 1, 100, 1900, 100);
    unsigned long now = millis();
    if (now - last_toggle >= interval) {
        digitalWrite(board_led, !digitalRead(board_led));
        last_toggle = now;
    }
}

void loop() {
    server.handleClient();
    ota_server.handleClient();
    ElegantOTA.loop();

    update_led();
}
