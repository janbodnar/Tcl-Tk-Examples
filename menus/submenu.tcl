#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# In this code example, we create 
# a submenu.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


menu .mbar
. configure -menu .mbar

menu .mbar.fm -tearoff 0
.mbar add cascade -menu .mbar.fm -label File \
    -underline 0
       
menu .mbar.fm.sb   
.mbar.fm.sb add command -label "News feed"
.mbar.fm.sb add command -label Bookmarks
.mbar.fm.sb add command -label Mail

.mbar.fm add cascade -label Import -menu \
    .mbar.fm.sb -underline 0
.mbar.fm add separator
        
.mbar.fm add command -label Exit -underline 0 \
    -command {exit}     


wm title . submenu 
wm geometry . 350x250+300+300  
