#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we lay out images
# using absolute positioning.
#
# Author: Jan Bodnar
# Website: www.zetcode.com

package require Img


frame .fr -background "#333"
pack .fr -fill both -expand 1

image create photo img1 -file "bardejov.jpg"
label .fr.lbl1 -image img1
place .fr.lbl1 -x 20 -y 20

image create photo img2 -file "rotunda.jpg"
label .fr.lbl2 -image img2
place .fr.lbl2 -x 40 -y 160

image create photo img3 -file "mincol.jpg"
label .fr.lbl3 -image img3
place .fr.lbl3 -x 170 -y 50


wm title . "absolute" 
wm geometry . 300x280+300+300

