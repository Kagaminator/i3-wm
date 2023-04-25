#!/bin/bash

i3() { echo "i3 config"; cp -v -R -a -f ~/i3-wm/i3 ~/.config; }
alacritty() { echo "alacritty"; cp -v -R -a -f ~/i3-wm/alacritty  ~/.config;  }
picom() { echo "picom config"; cp -v -R -a -f ~/i3-wm/picom  ~/.config;  }
polybar() { echo "polybar config"; cp -v -R -a -f ~/i3-wm/polybar  ~/.config; }

i3 && alacritty && picom && polybar 

