#!/bin/bash

intern="eDP-1"
externR="DP-1-0"
externL="DP-1-2.3"

if xrandr | grep "$intern connected" && xrandr | grep "$externR connected" && xrandr | grep "$externL connected"; then
  xrandr --output "$externR" --mode 2560x1440 --right-of "$externL"
  xrandr --output "$externL" --mode 2560x1440 --left-of "$externR"
  xrandr --output "$intern" --off
else
  xrandr --output "$intern" --auto
fi
