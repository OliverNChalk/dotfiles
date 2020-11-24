#!/bin/bash
mkdir -p $HOME/.config/nvim/
mv $HOME/.config/nvim/autoload/plugged/ $HOME/.tmp.autoload.plugged.bak/
cp -R ./nvcode/* $HOME/.config/nvim/
mv $HOME/.tmp.autoload.plugged.bak/ $HOME/.config/nvim/autoload/plugged/
