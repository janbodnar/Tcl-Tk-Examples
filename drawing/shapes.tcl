#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we draw basic 
# shapes on the canvas.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


canvas .can
.can create oval 10 10 80 80 -outline #777 \
    -fill #777 
.can create oval 110 10 210 80 -outline #777 \
    -fill #777 
.can create rect 230 10 290 60 -outline #777 \
    -fill #777 
.can create arc 30 200 90 100 -start 0 -extent 210 \
    -outline #777 -fill #777 
    
set points  [ list 150 100 200 120 240 180 210 \
    200 150 150 100 200 ]
.can create polygon $points -outline #777 \
    -fill #777 
pack .can

wm title . "shapes" 
wm geometry . 350x250+300+300
