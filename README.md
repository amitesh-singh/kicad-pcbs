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
