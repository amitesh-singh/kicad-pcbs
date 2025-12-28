#!/bin/bash

docker run --rm -i -t -v ".:/data" ptodorov/pcb2gcode

cat back.ncg > combined.ncg
cat drill.ncg >> combined.ncg
cat outline.ncg >> combined.ncg

