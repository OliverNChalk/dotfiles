#!/bin/bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git $HOME/bin/yay
cd $HOME/bin/yay
makepkg -si
