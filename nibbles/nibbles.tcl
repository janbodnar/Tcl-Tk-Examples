#!/usr/bin/wish

# ZetCode Tcl/Tk tutorial
#
# This is simple Nibbles game clone.
#
# Author: Jan Bodnar
# Website: www.zetcode.com


package require Img

set WIDTH 300
set HEIGHT 300
set DELAY 100
set DOT_SIZE 10
set ALL_DOTS [expr $WIDTH * $HEIGHT / ($DOT_SIZE * $DOT_SIZE)]
set RAND_POS 27


canvas .c -width $WIDTH -height $HEIGHT -background black
pack .c


proc initGame {} {

    set ::left false
    set ::right true
    set ::up false
    set ::down false
    set ::inGame true
    set dots 3
    set ::apple_x 100
    set ::apple_y 190

    for {set i 0} {$i<$dots} {incr i} {
        set x($i) [expr 50 - $i * 10]
        set y($i) 50
    }

    set ::idot [image create photo img1 -file "dot.png"]
    set ::ihead [image create photo img2  -file "head.png"]
    set ::iapple [image create photo img3 -file "apple.png"]

    createObjects
    locateApple

    bind . "<Key>" "onKeyPressed %K"

    after $::DELAY onTimer
}

proc createObjects {} {

    .c create image $::apple_x $::apple_y \
        -image $::iapple -tag apple -anchor nw
    .c create image 50 50 -image $::ihead -tag head -anchor nw
    .c create image 30 50 -image $::idot -tag dot -anchor nw
    .c create image 40 50 -image $::idot -tag dot -anchor nw
}

proc checkApple {} {

    set apple [.c find withtag apple]
    set head [.c find withtag head]

    set l [.c bbox head]
    set overlap [eval .c find overlapping $l]

    foreach over $overlap {

        if {$over == $apple} {
            set crd [.c coords $apple]
            set x [lindex $crd 0]
            set y [lindex $crd 1]
            .c create image $x $y -image $::idot -anchor nw -tag dot
            locateApple
        }
    }
}

proc doMove {} {

    set dots [.c find withtag dot]
    set head [.c find withtag head]
    set items [concat $dots $head]

    set z 0

    while {$z < [expr [llength $items] - 1]} {


        set c1 [.c coords [lindex $items $z]]
        set c2 [.c coords [lindex $items [expr $z+1]]]

        .c move [lindex $items $z] [expr [lindex $c2 0]  - [lindex $c1 0] ] \
            [expr [lindex $c2 1]  - [lindex $c1 1] ]
        incr z
    }

    if { [string compare $::left true] == 0} {
        .c move head -$::DOT_SIZE 0
    }

    if {[string compare $::right true] == 0} {
        .c move head $::DOT_SIZE 0
    }

    if {[string compare $::up true] == 0} {
        .c move head 0 -$::DOT_SIZE
    }

    if {[string compare $::down true] == 0} {
        .c move head 0 $::DOT_SIZE
    }
}

proc checkCollisions {} {

    set dots [.c find withtag dot]
    set head [.c find withtag head]

    set l [.c bbox head]
    set overlap [eval .c find overlapping $l]

    foreach dot $dots {

        foreach over $overlap {
            if {$over == $dot} {
                 set ::inGame false
            }
        }
    }

    set x1 [lindex $l 0]
    set y1 [lindex $l 1]

    if {$x1 < 0} {
         set ::inGame false
    }

    if {$x1 > [expr $::WIDTH - $::DOT_SIZE]} {
         set ::inGame false
    }

    if {$y1 < 0} {
        set ::inGame false
    }

    if {$y1 > [expr $::HEIGHT - $::DOT_SIZE]} {
        set ::inGame false
    }
}

proc locateApple {} {

    set apple [.c find withtag apple]
    .c delete lindex apple 0

    set r [expr round(rand() * $::RAND_POS)]
    set ::apple_x [expr $r * $::DOT_SIZE]
    set r [expr round(rand() * $::RAND_POS)]
    set ::apple_y [expr $r * $::DOT_SIZE]

    .c create image $::apple_x $::apple_y -anchor nw \
        -image $::iapple -tag apple
}

proc onKeyPressed {key} {

    set a1 [ expr [string compare $key Left] == 0]
    set a2 [ expr [string compare $::right true] != 0]

    if { $a1 && $a2 } {

        set ::left true
        set ::up false
        set ::down false
    }

    set b1 [ expr [string compare $key Right] == 0]
    set b2 [ expr [string compare $::left true] != 0]

    if {  $b1 && $b2 } {

        set ::right true
        set ::up false
        set ::down false
    }

    set c1 [ expr [string compare $key Up] == 0]
    set c2 [ expr [string compare $::down true] != 0]

    if { $c1 && $c2 } {

        set ::up true
        set ::left false
        set ::right false
    }

    set d1 [ expr [string compare $key Down] == 0]
    set d2 [ expr [string compare $::up true] != 0]

    if { $d1 && $d2 }  {

        set ::down true
        set ::left false
        set ::right false
    }
}

proc onTimer {} {

    if {$::inGame} {
        checkCollisions
        checkApple
        doMove
        after $::DELAY onTimer
    } else {
        gameOver
    }
}

proc gameOver {} {

   .c delete all

   set x [ expr [winfo width .] / 2 ]
   set y [ expr [winfo height .] / 2]

   .c create text $x $y  -text "Game over" -fill white
}


initGame

wm title . "Nibbles"
wm geometry . +150+150
