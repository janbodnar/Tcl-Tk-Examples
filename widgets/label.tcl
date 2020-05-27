#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we use a label
# widget to show an image.
#
# Author: Jan Bodnar
# Website: www.zetcode.com

package require Img


frame .fr
pack .fr
image create photo img -file "tatras.jpg"
label .fr.lbl -image img
pack .fr.lbl

wm title . label
wm geometry . +300+300
