#!/usr/bin/env sh
 
# Coloring the output
healthy='#8cc350'
hot='#ff1919'
 
# This should get the temperature of your GPU
heat=$(nvidia-smi -q -d TEMPERATURE | awk '/GPU Current Temp/ {print $5}')

# Modify this accordingly so it is a number
if (($heat >= 60));
then
        heatColour=$hot
else
        heatColour=$healthy
fi
 
# Output the result
echo "<span color=\"$heatColour\">GPU: +$heat</span>"
