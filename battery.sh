#!/usr/bin/env sh
 
# Coloring the output
healthy='#8cc350'
low='#ff1919'
discharge='#ffff19'
 
# Modify this to read the right value
capacity=`cat /sys/class/power_supply/BAT1/capacity`

if (($capacity <= 25));
then
        capacityColour=$low
else
        capacityColour=$healthy
fi
 
# Modify this to read the right value
status=`cat /sys/class/power_supply/BAT1/status`
 
if [[ "$status" = "Discharging" ]]
then
        statusColour=$discharge
        status="▼"
else
        statusColour=$healthy
        status="▲"
fi
 
# Output the result
echo "  <span color=\"$capacityColour\">$capacity%</span> <span color=\"$statusColour\">$status</span>  "
