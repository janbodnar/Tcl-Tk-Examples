#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we use tk_chooseColor
# dialog to change the colour of the text.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


label .l -text ZetCode
place .l -x 20 -y 90

button .b -text "Choose a color..." \
        -command "onSelect .l" 
place .b -x 20 -y 30

wm title . "color dialog" 
wm geometry . 350x200+300+300


proc onSelect {widget} {
    set col \
        [tk_chooseColor -title "Choose a color" -parent .]
    $widget configure -foreground $col
}
