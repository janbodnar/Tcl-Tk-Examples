#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we show how to
# use the listbox widget.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


frame .fr
pack .fr -fill both -expand 1

listbox .fr.lb 
.fr.lb insert end "Scarlett Johansson" "Rachel Weiss" "Winona Ryder" \
    "Jessica Alba" 

bind .fr.lb <<ListboxSelect>> { setLabel [%W curselection]}

place .fr.lb -x 20 -y 20 

label .fr.lbl 
place .fr.lbl -x 20 -y 210

wm title . listbox
wm geometry . 350x250+300+300

proc setLabel { idx } {

    set val [.fr.lb get $idx]
    .fr.lbl configure -text $val

}
