#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this program, we use the
# tk_getOpenFile dialog to select a file from
# a filesystem.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


set types {
    {"All Source Files"     {.tcl .tk } }
    {"Image Files"          {.gif .png .jpg} }
    {"All files"            *}
}

proc onSelect { label } {
    global types   
    set file [tk_getOpenFile -filetypes $types -parent .]
    $label configure -text $file
}

label .l -text "..."
place .l -x 20 -y 90

button .b -text "Select a file" \
        -command "onSelect .l"
place .b -x 20 -y 30


wm title . "openfile" 
wm geometry . 350x200+300+300
