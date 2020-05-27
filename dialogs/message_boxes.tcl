#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this program, we show various
# message boxes.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


frame .fr
pack .fr 

ttk::button .fr.erButton -text Error -command onError
grid .fr.erButton 
ttk::button .fr.wButton -text Warning -command onWarn
grid .fr.wButton -row 1 -column 0 
ttk::button .fr.queButton -text Question -command onQuest
grid .fr.queButton -row 0 -column 1 -sticky we -columnspan 6
ttk::button .fr.infButton -text Information -command onInfo
grid .fr.infButton -row 1 -column 1


proc onError {} {
    tk_messageBox -type ok -icon error -title Error \
    -message "Could not open file"
}

proc onWarn {} {
    tk_messageBox -type ok -icon warning -title Warning \
    -message "Deprecated function call"
}

proc onQuest {} {
    tk_messageBox -type ok -icon question -title Question \
    -message "Are you sure to quit?"
}

proc onInfo {} {
    tk_messageBox -type ok -icon info -title Information \
    -message "Download completed"
}


wm title . "message boxes" 
wm geometry . 300x250+300+300
