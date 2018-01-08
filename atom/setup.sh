#!/bin/bash

echo "Download and install"
curl -o atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb

# To list atom packages use "apm list --installed --bare > ~/dotfiles/atom/packages.txt"
echo "Install packages from ~/dotfiles/atom/packages.txt"
apm install --packages-file ~/dotfiles/atom/packages.txt

echo "Copy config and styles"
cp ~/dotfiles/atom/styles.less ~/.atom/styles.less
cp ~/dotfiles/atom/config.cson ~/.atom/config.cson
