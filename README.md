### links

sabor awesome shift register boards
* http://repos.borg.ch/projects/pcbs/trunk/shift_regs/doc/shift_regs.sch.svg
* http://repos.borg.ch/projects/pcbs/trunk/shift_regs/doc/shift_regs_bidi.sch.svg
* http://repos.borg.ch/projects/pcbs/trunk/shift_regs/doc/shift_regs_bidi.html

### manifacturer
- oshpark: 6 dollars per 3 board (5cm x 5cm) - prototype service  
   http://docs.oshpark.com/services/
   * i probably order my first board from here.
- https://www.elecrow.com/services/pcb-prototyping.html
-  macrofab https://macrofab.com/
- seedstudio
- dirtypcb : dirtypcb wants *edge.cuts.gm1 into *.gko extension
- lionscircuits: http://www.lioncircuits.com/ -  looks promising for small number for prototypes.

### Enable menu icons
On my home PC, the menu icons were absent in kicad somehow.
running this command fixes those:

$ gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"

### Panelize PCBs
- http://projects.borg.ch/electronics/kicad/panelize.html#A%20Bigger%20Example

- put 2.5-3mm space between each pcb as 1mm space would take up by cutter tool.
#### how to use panelize script
 panelize.py configfile
### Custom PCBs how to
 https://andrehessling.de/2016/09/13/getting-a-custom-board-outline-from-an-svg-file-into-kicad/

### lib and pretty file for ICs
 - https://www.snapeda.com/about/import/

### Kicad setup guide

#### first time setup.  

1. Setting folders for lib,footprints and 3d shapes.

- create a dir named "Kicad" in ~/repos/
- cd Kicad
- git clone https://github.com/KiCad/kicad-library
- git clone https://github.com/KiCad/kicad-packages3D
- git clone https://github.com/KiCad/kicad-footprints
- open Kicad  
   Go to Preferences -> Configure path ->  
   KICAD_PTEMPLATES -> /home/ami/repos/KiCad/kicad-library/template    
   KIGITHUB -> https://github.com/KiCad  
   KISYS3DMOD -> /home/ami/repos/KiCad/kicad-packages3D  
   KISYSMOD -> /home/ami/repos/KiCad/kicad-library/modules  
- open any sch file and do following things  
  Preferences -> component libraries  
  delete all components library files
  click add -> go to /home/ami/repos/KiCad/kicad-library/library and selet all .lib files.  

- open any kicad_pcb files and Preferences -> Footprint libraries manager & delete all the libraries  
  click append with Wizard -> Files on computer -> Next -> /home/ami/repos/KiCad/kicad-footprints and select all the folders
  

#### setting traces size

PCBNew -> Design rules -> Global design tab

Add track1 - 0.1524  
    track2 - 0.254   
    track3 - 0.381  
    track4 - 0.508
    track5 - 0.8128

    For digital circuits 5v/3.3v, we generally use Track width size 0.381mm

Adding generic Net classes for Power  
Click-> Add -> New Net Class Name -> Power ->  
Clerance -> 0.25  
Track Width -> 0.38  
Via Dia -> 0.4  
Via Drill -> 0.3  
uVia Dia -> 0.3  
uVia Drill -> 0.1  

Go on left side and select Vcc/5v/3.3v/GND and let them use Power Net Class.


Generate good looking PCB artwork from KiCAD 
- https://onetransistor.blogspot.kr/2017/04/kicad-pcb-artwork-display.html?m=1
