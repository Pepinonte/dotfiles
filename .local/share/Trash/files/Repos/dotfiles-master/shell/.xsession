#!/bin/sh

#doubleScreen24"
# xrandr --output DVI-I-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-2 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-3 --off
#ultrawide&verticalSreen24"
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off

# pulseaudio &
pluseaudio -D
# cbatticon &
nm-applet &
picom &
feh --bg-scale /home/headhtr/Pictures/Wallpaper/wallpaper1.jpg
udiskie -t &
