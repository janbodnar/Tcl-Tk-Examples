#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we use the grid
# manager to create a more complicated
# layout.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


frame .fr -padx 5 -pady 5
pack .fr -fill both -expand 1

label .fr.lbl -text Windows
grid .fr.lbl -sticky w -pady 4 -padx 5
        
text .fr.area
grid .fr.area -row 1 -column 0 -columnspan 2 \
    -rowspan 4 -padx 5 -sticky ewsn 

ttk::button .fr.act -text Activate
grid .fr.act -row 1 -column 3

ttk::button .fr.cls -text Close
grid .fr.cls -row 2 -column 3 -pady 4

ttk::button .fr.hlp -text Help
grid .fr.hlp -row 5 -column 0 -padx 5

ttk::button .fr.ok -text OK
grid .fr.ok -row 5 -column 3

grid columnconfigure .fr 1 -weight 1
grid columnconfigure .fr 3 -pad 7

grid rowconfigure .fr 3 -weight 1
grid rowconfigure .fr 5 -pad 7

wm title . "Windows" 
wm geometry . 350x300+300+300
