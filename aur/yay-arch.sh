#!/bin/bash
#3. Setting up Yay
cd /opt
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay --save --answerdiff None --answerclean None --removemake