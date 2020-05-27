#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# This program creates a quit
# button. When we press the button,
# the application terminates. 
#
# Author: Jan Bodnar
# Website: www.zetcode.com


button .hello -text "Quit" -command { exit }
place .hello -x 50 -y 50 


wm title . "Quit button" 
wm geometry . 350x250+300+300
