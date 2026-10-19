# Get current speed
#!/bin/bash

curl http://rpi5-fan-controller.local/api/speed

# Set to 75%
curl -X POST http://rpi5-fan-controller.local/api/speed -d "speed=75"

# Or with JSON
curl -X POST http://rpi5-fan-controller.local/api/speed \
  -H "Content-Type: application/json" \
  -d '{"speed": 75}'

# Full status
curl http://rpi5-fan-controller.local/api/status
