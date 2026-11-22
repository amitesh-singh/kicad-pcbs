/*
 * PCB Etcher shaker controller - NodeMCU v3 (ESP-12E / ESP8266)
 *
 * Wiring
 * ------
 *   D2 (GPIO4)  -> 100R -> NMOS gate (logic-level, e.g. IRLZ44N / AO3400 / IRLML6344)
 *                  + 100k gate->GND pulldown (keeps motor off while the ESP boots)
 *   NMOS source -> GND (common with the NodeMCU GND)
 *   NMOS drain  -> motor (-);  motor (+) -> USB 5V (VIN)
 *   Flyback diode (1N5819 / SS14) across the motor: cathode to 5V, anode to drain
 *   100-470uF cap across the motor supply, + 100nF across the motor terminals
 *
 *   Buzzer (passive, high-side PNP switch - 2N3906)
 *   D1 (GPIO5)  -> 2.2k -> 2N3906 base
 *   2N3906 emitter   -> 3V3
 *   2N3906 collector -> buzzer (+);  buzzer (-) -> GND
 *                  The PNP is ACTIVE LOW: pin LOW = buzzer powered, pin HIGH =
 *                  off. So the firmware idles D1 HIGH (setup() and buzzerOff()),
 *                  and tone() toggles it to make sound. Never leave D1 LOW when
 *                  idle - that holds the transistor on and the buzzer sits on
 *                  DC (silent for a passive buzzer, but wastes current).
 *                  Keep the emitter on 3V3, not 5V: a 3.3V GPIO HIGH cannot
 *                  fully turn off a PNP whose emitter is at 5V.
 *                  2N3906 TO-92 pinout (flat face towards you): E-B-C.
 *
 *   D4 (GPIO2)  -> on-board ESP-12E LED (active LOW) - blink currently DISABLED
 *                  (updateLed() call and PIN_LED init are commented out)
 *
 * Usage
 * -----
 *   First boot: connect to the "PCB-Etcher" Wi-Fi AP and pick your network.
 *   Then open http://etcher.local/ (or the IP printed on Serial @115200).
 *   If no network is available the device stays reachable at 192.168.4.1
 *   via its own "PCB-Etcher" AP.
 *
 *   Buzzer: short chirps on start/stop, a tick for the last 3 s, and when the
 *   timer finishes the "done" melody REPEATS until you start the timer again or
 *   tick "Mute buzzer" in the web UI. A manual Stop only chirps once.
 *
 * Libraries: WiFiManager (tzapu), ESP8266 core.
 */

#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
#include <WiFiManager.h>

// ---------------------------------------------------------------- pins
static const uint8_t PIN_MOTOR  = D2;   // D2
static const uint8_t PIN_BUZZER = D1;   // D1
static const uint8_t PIN_LED    = D4;   // ESP-12E module LED, active LOW

// ------------------------------------------------------------- tunables
static const uint16_t PWM_RANGE        = 1023;
static const uint16_t PWM_FREQ_HZ      = 1000;  // raise (e.g. 4000) if you dislike the whine
static const uint8_t  MIN_DUTY_PCT     = 30;    // duty at "speed 1" - raise if the motor stalls at low speed
static const uint16_t RAMP_UP_STEP     = 12;    // PWM counts per 10 ms  (~1 s 0->100%) limits USB inrush
static const uint16_t RAMP_DOWN_STEP   = 40;
static const uint32_t MAX_DURATION_S   = 2UL * 60 * 60;
static const uint8_t  DEFAULT_SPEED    = 60;    // %
static const uint32_t DEFAULT_DURATION = 10UL * 60;  // seconds

static const char *HOSTNAME = "etcher";
static const char *AP_NAME  = "PCB-Etcher";

// --------------------------------------------------------------- state
ESP8266WebServer server(80);

static bool     running    = false;
static uint32_t startMs    = 0;
static uint32_t durationS  = DEFAULT_DURATION;  // 0 = run until stopped
static uint8_t  speedPct   = DEFAULT_SPEED;     // 1..100
static bool     muted      = false;

static int      curDuty    = 0;                 // actual PWM duty (ramped)
static int      lastWritten = -1;

// ------------------------------------------------------------- buzzer
struct Note { uint16_t freq; uint16_t ms; };     // freq 0 = rest

static const Note MEL_START[] = {{1500, 90}, {0, 40}, {2200, 140}};
static const Note MEL_STOP[]  = {{2200, 90}, {0, 40}, {1200, 160}};
static const Note MEL_DONE[]  = {
  {2400, 200}, {0, 120}, {2400, 200}, {0, 120}, {2400, 200}, {0, 400},
  {2400, 200}, {0, 120}, {2400, 200}, {0, 120}, {2400, 200}, {0, 400},
  {2400, 400}
};
static const Note MEL_TICK[]  = {{1000, 60}};
static const Note MEL_READY[] = {{1800, 80}, {0, 40}, {1800, 80}};

static const Note *melody   = nullptr;
static uint8_t     melodyLen = 0;
static uint8_t     melodyIdx = 0;
static uint32_t    noteEndMs = 0;

// After the timer finishes, MEL_DONE repeats until the timer is re-run or the
// buzzer is muted.
static bool        alarm = false;
static const uint32_t ALARM_GAP_MS = 1500;   // pause between repeats

#define PLAY(m) playMelody(m, sizeof(m) / sizeof(m[0]))

// Buzzer is driven through a PNP (2N3906): pin HIGH = transistor off = silent.
// noTone() leaves the pin LOW, which would switch the PNP ON, so always
// restore the idle level afterwards.
static const uint8_t BUZZER_IDLE = HIGH;
static void buzzerOff() {
  noTone(PIN_BUZZER);
  digitalWrite(PIN_BUZZER, BUZZER_IDLE);
}

static void playMelody(const Note *m, uint8_t n) {
  if (muted) return;
  melody = m; melodyLen = n; melodyIdx = 0; noteEndMs = millis();
  buzzerOff();
}

static void updateBuzzer() {
  if (!melody) return;
  if ((int32_t)(millis() - noteEndMs) < 0) return;
  if (melodyIdx >= melodyLen) {
    buzzerOff();
    if (alarm && !muted) {                 // timer finished: repeat until restart/mute
      melodyIdx = 0;
      noteEndMs = millis() + ALARM_GAP_MS;
      return;
    }
    melody = nullptr;
    return;
  }
  const Note &n = melody[melodyIdx++];
  if (n.freq) tone(PIN_BUZZER, n.freq, n.ms);
  else        buzzerOff();
  noteEndMs = millis() + n.ms;
}

// -------------------------------------------------------------- motor
static int speedToDuty(uint8_t s) {
  if (s == 0) return 0;
  if (s > 100) s = 100;
  const int minDuty = (int)MIN_DUTY_PCT * PWM_RANGE / 100;
  return minDuty + (int)((long)(s - 1) * (PWM_RANGE - minDuty) / 99);
}

static void updateMotor() {
  static uint32_t lastStep = 0;
  uint32_t now = millis();
  if (now - lastStep < 10) return;
  lastStep = now;

  int target = running ? speedToDuty(speedPct) : 0;
  if (curDuty < target)      curDuty = min(curDuty + (int)RAMP_UP_STEP, target);
  else if (curDuty > target) curDuty = max(curDuty - (int)RAMP_DOWN_STEP, target);

  if (curDuty != lastWritten) {
    analogWrite(PIN_MOTOR, curDuty);
    lastWritten = curDuty;
  }
}

// ---------------------------------------------------------------- LED
static void updateLed() {
  static uint32_t last = 0;
  static bool on = false;
  if (curDuty <= 0) {
    if (on || last == 0) { digitalWrite(PIN_LED, HIGH); on = false; last = 1; }
    return;
  }
  // faster blink at higher speed: ~500 ms half-period at 1% -> ~100 ms at 100%
  uint32_t half = 500 - (uint32_t)speedPct * 4;
  uint32_t now = millis();
  if (now - last >= half) {
    last = now;
    on = !on;
    digitalWrite(PIN_LED, on ? LOW : HIGH);   // active LOW
  }
}

// -------------------------------------------------------------- timer
static uint32_t elapsedS() { return running ? (millis() - startMs) / 1000 : 0; }

static uint32_t remainingS() {
  if (!running || durationS == 0) return 0;
  uint32_t el = millis() - startMs;
  uint32_t total = durationS * 1000UL;
  return el >= total ? 0 : (total - el + 999) / 1000;   // round up
}

static void startRun() {
  if (running) return;
  running = true;
  startMs = millis();
  alarm = false;                 // re-running the timer silences the alarm
  PLAY(MEL_START);
  Serial.printf("START speed=%u%% duration=%lus\n", speedPct, (unsigned long)durationS);
}

static void stopRun(bool finished) {
  if (!running) return;
  running = false;
  alarm = finished && !muted;
  if (finished) PLAY(MEL_DONE); else PLAY(MEL_STOP);
  Serial.println(finished ? "DONE" : "STOP");
}

static void updateTimer() {
  if (!running || durationS == 0) return;
  uint32_t rem = remainingS();
  if (rem == 0) { stopRun(true); return; }
  static uint32_t lastTick = 0;
  if (rem <= 3 && rem != lastTick) { lastTick = rem; PLAY(MEL_TICK); }
}

// ---------------------------------------------------------------- web
static const char INDEX_HTML[] PROGMEM = R"rawliteral(<!doctype html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>PCB Etcher</title>
<style>
:root{--bg:#10141a;--card:#1a212b;--fg:#e8edf3;--mut:#8b97a6;--acc:#3fb5ff;--ok:#2ecc71;--bad:#ff5a5f}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--fg);font:16px system-ui,sans-serif;display:flex;justify-content:center}
main{width:100%;max-width:440px;padding:16px}
h1{font-size:18px;font-weight:600;margin:4px 0 14px;color:var(--mut);display:flex;justify-content:space-between}
.card{background:var(--card);border-radius:14px;padding:18px;margin-bottom:14px}
#time{font-size:64px;font-variant-numeric:tabular-nums;text-align:center;font-weight:600;letter-spacing:1px}
#state{text-align:center;color:var(--mut);margin-top:2px;min-height:1.2em}
#state.run{color:var(--ok)}
label{display:flex;justify-content:space-between;color:var(--mut);margin-bottom:8px}
label b{color:var(--fg)}
input[type=range]{width:100%;height:36px;accent-color:var(--acc)}
.row{display:flex;gap:8px}
button{flex:1;border:0;border-radius:10px;padding:14px;font-size:17px;font-weight:600;color:#fff;background:#2b3644;cursor:pointer}
button:active{filter:brightness(1.2)}
#start{background:var(--ok)}#stop{background:var(--bad)}
button:disabled{opacity:.35}
.pre button{padding:9px;font-size:14px}
input[type=number]{width:90px;background:#10141a;color:var(--fg);border:1px solid #2b3644;border-radius:8px;padding:8px;font-size:16px;text-align:center}
.foot{color:var(--mut);font-size:13px;display:flex;justify-content:space-between;align-items:center}
</style></head><body><main>
<h1><span>PCB Etcher</span><span id="conn">&#9679;</span></h1>

<div class="card">
  <div id="time">--:--</div>
  <div id="state">&nbsp;</div>
</div>

<div class="card">
  <label>Timer (minutes, 0 = run until stopped)
    <input id="min" type="number" min="0" max="120" step="0.5" value="10"></label>
  <div class="row pre" style="margin-top:10px">
    <button data-m="2">2</button><button data-m="5">5</button><button data-m="10">10</button>
    <button data-m="15">15</button><button data-m="20">20</button>
  </div>
</div>

<div class="card">
  <label>Speed <b id="spv">60%</b></label>
  <input id="sp" type="range" min="1" max="100" value="60">
</div>

<div class="card row">
  <button id="start">Start</button>
  <button id="stop">Stop</button>
</div>

<div class="foot">
  <label style="margin:0;gap:8px;justify-content:flex-start"><input id="mute" type="checkbox"> Mute buzzer</label>
  <span id="net"></span>
</div>
</main>
<script>
const $=id=>document.getElementById(id);
let st={running:false}, dragging=false, timer=null;

async function api(path,params){
  const r=await fetch(path+'?'+new URLSearchParams(params||{}),{method:'POST'});
  return r.json();
}
const fmt=s=>{s=Math.max(0,Math.round(s));const h=Math.floor(s/3600),m=Math.floor(s%3600/60),x=s%60;
  const p=n=>String(n).padStart(2,'0');return (h?h+':':'')+p(m)+':'+p(x)};

function render(){
  const idleSecs=Math.round((parseFloat($('min').value)||0)*60);
  if(st.running){
    $('time').textContent=st.duration?fmt(st.remaining):fmt(st.elapsed);
    $('state').textContent=st.duration?'Etching...':'Running (continuous) - elapsed';
    $('state').className='run';
  }else{
    $('time').textContent=idleSecs?fmt(idleSecs):'--:--';
    $('state').textContent=st.alarm?'Done! Mute buzzer or Start to silence':'Stopped';$('state').className='';
  }
  $('start').disabled=st.running; $('stop').disabled=!st.running;
  $('min').disabled=st.running;
  document.querySelectorAll('.pre button').forEach(b=>b.disabled=st.running);
  if(!dragging){$('sp').value=st.speed;} $('spv').textContent=(dragging?$('sp').value:st.speed)+'%';
  $('mute').checked=!!st.mute;
  $('net').textContent=(st.rssi?st.rssi+' dBm  ':'')+st.ip;
}

async function refresh(){
  try{
    const first=!st.ip;
    st=await api('/api/status');
    if(first||(!st.running&&document.activeElement!==$('min'))) $('min').value=+(st.duration/60).toFixed(2);
    $('conn').style.color='#2ecc71';
  }catch(e){$('conn').style.color='#ff5a5f';}
  render();
}

$('sp').addEventListener('input',()=>{
  dragging=true;$('spv').textContent=$('sp').value+'%';
  clearTimeout(timer);
  timer=setTimeout(async()=>{await api('/api/speed',{value:$('sp').value});},80);
});
$('sp').addEventListener('change',async()=>{
  await api('/api/speed',{value:$('sp').value});dragging=false;refresh();
});
$('start').onclick=async()=>{
  const secs=Math.round((parseFloat($('min').value)||0)*60);
  st=await api('/api/start',{duration:secs,speed:$('sp').value});render();
};
$('stop').onclick=async()=>{st=await api('/api/stop');render();};
$('mute').onchange=async()=>{await api('/api/mute',{value:$('mute').checked?1:0});};
$('min').oninput=render;
document.querySelectorAll('.pre button').forEach(b=>b.onclick=()=>{$('min').value=b.dataset.m;render();});

refresh();setInterval(refresh,500);
</script></body></html>)rawliteral";

static void sendStatus() {
  char buf[240];
  snprintf(buf, sizeof(buf),
    "{\"running\":%s,\"speed\":%u,\"duration\":%lu,\"remaining\":%lu,\"elapsed\":%lu,"
    "\"mute\":%s,\"alarm\":%s,\"rssi\":%d,\"ip\":\"%s\"}",
    running ? "true" : "false", speedPct, (unsigned long)durationS,
    (unsigned long)remainingS(), (unsigned long)elapsedS(),
    muted ? "true" : "false", alarm ? "true" : "false",
    WiFi.status() == WL_CONNECTED ? WiFi.RSSI() : 0,
    (WiFi.status() == WL_CONNECTED ? WiFi.localIP() : WiFi.softAPIP()).toString().c_str());
  server.sendHeader("Cache-Control", "no-store");
  server.send(200, "application/json", buf);
}

static void handleStart() {
  if (server.hasArg("speed"))
    speedPct = constrain(server.arg("speed").toInt(), 1, 100);
  if (server.hasArg("duration"))
    durationS = constrain(server.arg("duration").toInt(), 0, (long)MAX_DURATION_S);
  startRun();
  sendStatus();
}

static void handleStop()  { stopRun(false); sendStatus(); }

static void handleSpeed() {
  if (server.hasArg("value"))
    speedPct = constrain(server.arg("value").toInt(), 1, 100);   // applies live, ramped
  sendStatus();
}

static void handleMute() {
  if (server.hasArg("value")) muted = server.arg("value").toInt() != 0;
  if (muted) { alarm = false; melody = nullptr; buzzerOff(); }
  sendStatus();
}

static void setupWeb() {
  server.on("/", HTTP_GET, []() { server.send_P(200, "text/html", INDEX_HTML); });
  server.on("/api/status", sendStatus);
  server.on("/api/start", HTTP_POST, handleStart);
  server.on("/api/stop",  HTTP_POST, handleStop);
  server.on("/api/speed", HTTP_POST, handleSpeed);
  server.on("/api/mute",  HTTP_POST, handleMute);
  server.onNotFound([]() { server.send(404, "text/plain", "not found"); });
  server.begin();
}

// -------------------------------------------------------------- setup
void setup() 
{
  // Motor OFF before anything else.
  pinMode(PIN_MOTOR, OUTPUT);  digitalWrite(PIN_MOTOR, LOW);
  pinMode(PIN_BUZZER, OUTPUT); digitalWrite(PIN_BUZZER, HIGH); //pnp 2n3906 is connected - disable the buzzer initially
  pinMode(PIN_LED, OUTPUT);    digitalWrite(PIN_LED, HIGH);   // LED off (active LOW)

  Serial.begin(115200);
  Serial.println("\nPCB etcher shaker controller");

  analogWriteRange(PWM_RANGE);
  analogWriteFreq(PWM_FREQ_HZ);

  WiFi.hostname(HOSTNAME);
  WiFiManager wm;
  wm.setConfigPortalTimeout(120);   // don't hang forever if the router is away
  wm.setConnectTimeout(20);
  if (!wm.autoConnect(AP_NAME)) {
    Serial.println("No Wi-Fi - starting standalone AP");
    WiFi.mode(WIFI_AP);
    WiFi.softAP(AP_NAME);
  }
  Serial.print("IP: ");
  Serial.println(WiFi.status() == WL_CONNECTED ? WiFi.localIP() : WiFi.softAPIP());

  if (MDNS.begin(HOSTNAME)) MDNS.addService("http", "tcp", 80);

  setupWeb();
  PLAY(MEL_READY);
}

void loop() {
  server.handleClient();
  MDNS.update();
  updateTimer();
  updateMotor();
  updateLed(); 
  updateBuzzer();
}
