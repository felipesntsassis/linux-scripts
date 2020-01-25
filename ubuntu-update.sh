#!/bin/bash

echo "*************************************************************************************"
echo "*******************     SETUP DEVELOPMENT ENVIROMENT - UBUNTU     *******************"
echo "*************************************************************************************"

# Incluir repositórios em /etc/apt/sources.list
# Google Chrome: deb http://dl.google.com/linux/deb/ stable main

# Criar chaves
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Atualizção de Pacotes
sudo apt update
sudo apt upgrade

# Remoção de Aplicações não utilizadas
sudo apt-get purge openjdk*
sudo apt autoremove --purge rhythmbox* thunderbird*

# Aplicações Básicas
sudo apt install gnome-tweak-tool
sudo apt install vlc
sudo apt install clementine
sudo apt install ubuntu-restricted-extras
sudo apt install brasero
sudo apt install cdrdao
sudo apt install usb-creator-gtk
sudo apt install gimp
sudo apt install inkscape
sudo apt install shotwell
sudo apt install ttf-mscorefonts-installer
sudo apt-get install google-chrome-stable

sudo snap install --classic skype
sudo snap install spotify

# Aplicações de desenvolvimento
sudo apt install git
sudo apt install zsh
