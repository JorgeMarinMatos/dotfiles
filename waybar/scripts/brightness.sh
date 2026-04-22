#!/bin/bash

current=$(brightnessctl get)
max=$(brightnessctl max)

# Convert to percentage
brightness=$((current * 100 / max))

bars=$((brightness / 10))
empty=$((10 - bars))

printf "󰃠    "
printf "%0.s█" $(seq 1 $bars)
printf "%0.s░" $(seq 1 $empty)
