#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this script, we use the grid manager
# to create a skeleton of a calculator.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


frame .fr -padx 5 -pady 5
pack .fr -fill both -expand 1

ttk::style configure TButton -width 8 -height 8 -font "serif 10"

entry .fr.ent
grid .fr.ent -row 0 -columnspan 4 -sticky we

ttk::button .fr.cls -text "Cls"
grid .fr.cls -row 1 -column 0
ttk::button .fr.bck -text "Back"
grid .fr.bck -row 1 -column 1
ttk::button .fr.lbl
grid .fr.lbl -row 1 -column 2
ttk::button .fr.clo -text "Close"
grid .fr.clo -row 1 -column 3
ttk::button .fr.sev -text "7"
grid .fr.sev -row 2 -column 0
ttk::button .fr.eig -text "8"
grid .fr.eig -row 2 -column 1
ttk::button .fr.nin -text "9"
grid .fr.nin -row 2  -column 2
ttk::button .fr.div -text "/"
grid .fr.div -row 2 -column 3

ttk::button .fr.fou -text "4"
grid .fr.fou -row 3 -column 0
ttk::button .fr.fiv -text "5"
grid .fr.fiv -row 3 -column 1
ttk::button .fr.six -text "6"
grid .fr.six -row 3 -column 2
ttk::button .fr.mul -text "*"
grid .fr.mul -row 3 -column 3

ttk::button .fr.one -text "1"
grid .fr.one -row 4 -column 0
ttk::button .fr.two -text "2"
grid .fr.two -row 4 -column 1
ttk::button .fr.thr -text "3"
grid .fr.thr -row 4 -column 2
ttk::button .fr.mns -text "-"
grid .fr.mns -row 4 -column 3

ttk::button .fr.zer -text "0"
grid .fr.zer -row 5 -column 0
ttk::button .fr.dot -text "."
grid .fr.dot -row 5 -column 1
ttk::button .fr.equ -text "="
grid .fr.equ -row 5 -column 2
ttk::button .fr.pls -text "+"
grid .fr.pls -row 5 -column 3


grid columnconfigure .fr 0 -pad 3
grid columnconfigure .fr 1 -pad 3
grid columnconfigure .fr 2 -pad 3
grid columnconfigure .fr 3 -pad 3

grid rowconfigure .fr 0 -pad 3
grid rowconfigure .fr 1 -pad 3
grid rowconfigure .fr 2 -pad 3
grid rowconfigure .fr 3 -pad 3
grid rowconfigure .fr 4 -pad 3


wm title . "calculator"
wm geometry . +300+300
