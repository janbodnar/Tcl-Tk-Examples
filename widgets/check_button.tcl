#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# This program toggles the title of the
# window with the checkbutton widget.
#
# Wuthor: Jan Bodnar
# Website: www.zetcode.com


frame .fr
pack .fr -fill both -expand 1
checkbutton .fr.cb -text "Show title" -command onClick  \
    -onvalue true -offvalue false -variable selected
.fr.cb select 
place .fr.cb -x 50 -y 50 

proc onClick {} {

    global selected

    if {$selected==true} {
    
        wm title . checkbutton
    } else {
        wm title . ""
    }
}


wm title . checkbutton
wm geometry . 350x250+300+300
