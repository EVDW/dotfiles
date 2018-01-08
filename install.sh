#!/bin/bash

echo "Emma's dotfiles"

sudo apt-get update
sudo apt-get install php7.0 php7.0-curl php7.0-gd php7.0-xml php7.0-intl php7.0-ldap php7.0-sqlite3 php7.0-mysql \
    git curl silversearcher-ag nodejs htop \
    libxss1 libappindicator1 libindicator7 \
    apt-transport-https ca-certificates docker-engine

echo "-> Git"
cp ~/dotfiles/git/.gitconfig ~/.gitconfig
cp ~/dotfiles/egit/.gitignore ~/.gitignore

echo "-> Composer"
curl -sS https://getcomposer.org/installer | php && mv ~/composer.phar ~/.bin/composer

echo "-> Atom"
bash atom/setup.sh

echo "-> Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
