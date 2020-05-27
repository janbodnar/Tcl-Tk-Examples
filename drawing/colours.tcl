#!/usr/bin/wish

# ZetCode Tcl Tk tutorial
#
# This program draws three
# rectangles filled with different
# colours.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


canvas .can
.can create rect 30 10 120 80 \
    -outline #fb0 -fill #fb0
.can create rect 150 10 240 80 \
    -outline #f50 -fill #f50
.can create rect 270 10 370 80 \
    -outline #05f -fill #05f
pack .can


wm title . "Colours"
wm geometry . 400x100+300+300
