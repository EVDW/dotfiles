#!/bin/bash

echo "Download and install"
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# To list atom packages use "apm list --installed --bare > ~/dotfiles/atom/packages.txt"
echo "Install packages from ~/dotfiles/atom/packages.txt"
apm install --packages-file ~/dotfiles/atom/packages.txt

echo "Copy config and styles"
cp ~/dotfiles/atom/styles.less ~/.atom/styles.less
cp ~/dotfiles/atom/config.cson ~/.atom/config.cson
