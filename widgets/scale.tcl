#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we show how to
# use the scale widget.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


frame .fr
pack .fr -fill both -expand 1

scale .fr.scl -orient horizontal -from 0 -to 100 \
    -length 150  -variable val -showvalue 0
place .fr.scl -x 50 -y 50 

label .fr.lbl -textvariable val
place .fr.lbl -x 80 -y 110

wm title . scale
wm geometry . 350x250+300+300
