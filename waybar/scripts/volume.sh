#!/bin/bash

vol=$(pamixer --get-volume)

bars=$((vol / 10))
empty=$((10 - bars))

printf "    "
printf "%0.s█" $(seq 1 $bars)
printf "%0.s░" $(seq 1 $empty)
