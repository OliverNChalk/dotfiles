#!/bin/bash
sudo pacman -Sy fish
chsh -s /usr/bin/fish
cp -r ./config/fish/ $HOME/.config/fish
