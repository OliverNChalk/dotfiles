#!/bin/bash
cd $HOME/.config/nvim/
mkdir ../temp-backup/ || exit
mv autoload ../temp-backup/
mv plugged ../temp-backup/
mv session ../temp-backup/
rm -rf ./*
mv ../temp-backup/autoload/* ./
rm -rf ../temp-backup
