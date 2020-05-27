#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this code example, we create 
# a toolbar.
#
# Author: Jan Bodnar
# Website: www.zetcode.com

package require Img

menu .mbar
. configure -menu .mbar

menu .mbar.fl -tearoff 0
.mbar add cascade -menu .mbar.fl -label File \
    -underline 0
        
frame .toolbar -bd 1 -relief raised
image create photo img -file "exit.png"
button .toolbar.exitButton -image img -relief flat -command {exit}
pack .toolbar.exitButton -side left -padx 2 -pady 2
pack .toolbar -fill x

wm title . toolbar
wm geometry . 350x250+300+300
