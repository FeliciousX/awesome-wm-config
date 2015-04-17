#!/usr/bin/env sh
 
# Coloring the output
healthy='#8cc350'
hot='#ff1919'
 
# This should get the temperature of your CPU
heat=$(sensors | grep "Physical id 0:")

# Modify this accordingly so it is a number
if ((${heat:17:2} >= 60));
then
        heatColour=$hot
else
        heatColour=$healthy
fi

# Output the result
echo "<span color=\"$heatColour\">CPU:${heat:15:6}</span>"
