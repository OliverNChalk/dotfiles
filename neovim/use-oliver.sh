#!/bin/bash
mkdir -p $HOME/.config/nvim/
cp -R ./oliver-nvim/* $HOME/.config/nvim/
mv $HOME/.config/nvim/oliver.vim $HOME/.config/nvim/init.vim
