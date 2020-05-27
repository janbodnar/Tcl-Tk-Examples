#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we center a window
# on the screen.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


set width 350
set height 250
set x [expr { ( [winfo vrootwidth  .] - $width  ) / 2 }]
set y [expr { ( [winfo vrootheight .] - $height ) / 2 }]


wm title . "Center" 
wm geometry . ${width}x${height}+${x}+${y}
