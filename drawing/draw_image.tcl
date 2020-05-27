#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# This program draws an image
# on the canvas widget.
#
# Author: Jan Bodnar
# Website: www.zetcode.com

package require Img

image create photo img -file "tatras.jpg"
set height [image height img]
set width [image width img]


canvas .can -height $height -width $width
.can create image 0 0 -anchor nw -image img
pack .can

wm title . "High Tatras" 
wm geometry . +300+300
