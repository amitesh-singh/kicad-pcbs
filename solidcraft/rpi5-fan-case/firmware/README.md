# RPi5 Fan Controller Firmware

ESP8266-based firmware to control a PWM fan connected to `GPIO2`. WiFi provisioning is handled by WiFiManager on first boot. OTA updates are available via ElegantOTA.

## Hardware

| Pin | Function |
|-----|----------|
| GPIO1 | Board LED |
| GPIO2 | Fan PWM output (25 kHz) |

## First Boot

On first boot the ESP8266 broadcasts an AP named `rpi5-fan-controller-<chip-id>`. Connect to it and enter your WiFi credentials. After that it connects automatically on every reboot.

The device advertises itself as `rpi5-fan-controller` on the local network (mDNS), so you can reach it at `http://rpi5-fan-controller.local`.

## Web UI

Open `http://rpi5-fan-controller.local` in a browser for a dark-themed control panel with a speed slider and preset buttons (Off / 25% / 50% / 75% / Max). Status (IP, RSSI, chip ID) refreshes every 3 seconds.

## REST API

All endpoints are on **port 80**. Speed is always an integer from `0` (off) to `100` (full speed).

---

### `GET /api/speed`

Returns the current fan speed.

**Response**
```json
{"speed": 42}
```

**Example**
```bash
curl http://rpi5-fan-controller.local/api/speed
```

---

### `POST /api/speed`

Sets the fan speed. Accepts form-encoded or JSON body.

**Parameters**

| Name | Type | Range | Description |
|------|------|-------|-------------|
| `speed` | integer | 0–100 | Target fan speed in percent |

**Form-encoded (recommended for curl)**
```bash
curl -X POST http://rpi5-fan-controller.local/api/speed -d "speed=75"
```

**JSON**
```bash
curl -X POST http://rpi5-fan-controller.local/api/speed \
  -H "Content-Type: application/json" \
  -d '{"speed": 75}'
```

**Response**
```json
{"speed": 75}
```

**Error response (speed out of range)**
```json
{"error": "speed must be 0-100"}
```
HTTP status `400`.

---

### `GET /api/status`

Returns device status along with the current speed.

**Response**
```json
{
  "speed": 75,
  "chip_id": "a1b2c3",
  "ip": "192.168.1.42",
  "rssi": -61
}
```

**Example**
```bash
curl http://rpi5-fan-controller.local/api/status
```

---

## OTA Updates

ElegantOTA runs on **port 81**. Open `http://rpi5-fan-controller.local:81/update` in a browser to upload a new firmware binary.

## RPi5 Integration Example

A simple script to set fan speed based on CPU temperature:

```bash
#!/usr/bin/env bash
TEMP=$(vcgencmd measure_temp | grep -oP '\d+\.\d+')
TEMP_INT=${TEMP%.*}

if   [ "$TEMP_INT" -ge 70 ]; then SPEED=100
elif [ "$TEMP_INT" -ge 60 ]; then SPEED=75
elif [ "$TEMP_INT" -ge 50 ]; then SPEED=50
elif [ "$TEMP_INT" -ge 40 ]; then SPEED=25
else SPEED=0
fi

curl -s -X POST http://rpi5-fan-controller.local/api/speed -d "speed=$SPEED" > /dev/null
```
