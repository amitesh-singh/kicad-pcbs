#!/bin/bash

docker run --rm -i -t -v ".:/data" ptodorov/pcb2gcode

cat back.ngc > combined.ngc

#cat drill.ngc >> combined.ngc
# if you want to drill mounting holes
cat milldrill.ngc >> combined.ngc
cat outline.ngc >> combined.ngc
