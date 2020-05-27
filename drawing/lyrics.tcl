#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we draw text
# on the window.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


canvas .can
.can create text 10 30 -anchor w -font Purisa \
    -text "Most relationships seem so transitory"
.can create text 10 60 -anchor w -font Purisa \
    -text "They're good but not the permanent one"
.can create text 10 110 -anchor w -font Purisa \
    -text "Who doesn't long for someone to hold"
.can create text 10 140 -anchor w -font Purisa \
    -text "Who knows how to love without being told"
.can create text 10 170 -anchor w -font Purisa \
    -text "Somebody tell me why I'm on my own"
.can create text 10 200 -anchor w -font Purisa \
     -text "If there's a soulmate for everyone"
pack .can

wm title . "lyrics"
wm geometry . 430x250+300+300
