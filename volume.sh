#!/usr/bin/env sh
 
green='#8cc350'

# Get left & right sound
left=$(amixer get Master | grep Left | egrep -o "[0-9]+%")
right=$(amixer get Master | grep Right | egrep -o "[0-9]+%")
 
# Output the result
echo "<span color=\"$green\">$left $right</span>"
