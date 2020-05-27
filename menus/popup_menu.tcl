#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this code example, we create 
# a popup menu.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


menu .m -tearoff 0
.m add command -label Beep
.m add command -label Exit -command {exit}

bind . "<Button-3>" "showMenu %X %Y"

wm title . popupmenu
wm geometry . 350x250+300+300

proc showMenu {x y} {
    tk_popup .m $x $y
} 
