#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we use the pack
# manager to place two buttons in 
# bottom-right corner of the window
#
# Author: Jan Bodnar
# Website: www.zetcode.com

frame .fr
pack .fr -fill both -expand 1

frame .fr.pnl -relief raised -borderwidth 1
pack .fr.pnl -fill both -expand 1

ttk::button .fr.cb -text "Close"
pack .fr.cb -padx 5 -pady 5 -side right

ttk::button .fr.ok -text "OK"
pack .fr.ok -side right

wm title . "Buttons" 
wm geometry . 350x300+300+300
