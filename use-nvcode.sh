#!/bin/bash
mkdir -p $HOME/.config/nvim/
mv $HOME/.config/nvim/autoload/plugged/ $HOME/.tmp.autoload.plugged.bak/
rm -rf $HOME/.config/nvim/*
cp -R ./nvcode/* $HOME/.config/nvim/
mv $HOME/.tmp.autoload.plugged.bak/ $HOME/.config/nvim/autoload/plugged/
