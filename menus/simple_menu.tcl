#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this code example, we create 
# a simple menu.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


menu .mbar
. configure -menu .mbar

menu .mbar.fl -tearoff 0
.mbar add cascade -menu .mbar.fl -label File \
    -underline 0

.mbar.fl add command -label Exit -command { exit }

wm title . "Simple menu" 
wm geometry . 350x250+300+300
