#!/bin/bash

echo "*******************     SETUP DEVELOPMENT ENVIROMENT - UBUNTU     *******************";
sudo apt update
sudo apt upgrade

# Incluir repositórios em /etc/apt/sources.list
sudo echo "# Google Repository" >> /etc/apt/sources.list
sudo echo "deb http://dl.google.com/linux/deb/ stable main" >> /etc/apt/sources.list

# Criar chaves
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Atualizção de Pacotes
sudo apt update
sudo apt upgrade

# Remoção de Aplicações não utilizadas
sudo apt autoremove --purge openjdk* rhythmbox* thunderbird*

sudo apt update

# Minhas Aplicações
sudo apt install -y ubuntu-restricted-extras
sudo apt install -y gnome-tweak-tool
sudo apt install -y vlc
sudo apt install -y clementine
sudo apt install -y brasero
sudo apt install -y cdrdao
sudo apt install -y usb-creator-gtk
sudo apt install -y gimp
sudo apt install -y inkscape
sudo apt install -y shotwell
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y google-chrome-stable

# Aplicações de Desenvolvimento
sudo apt install -y git
sudo apt install -y zsh
chsh -s $(which zsh)


sudo snap install --classic skype
sudo snap install spotify

# Criar ambiente de desenvolvimento
mkdir -p ~/desenv/java
mkdir -p ~/desenv/cabonnet
mkdir -p ~/desenv/escolpi
mkdir -p ~/desenv/rhf
mkdir -p ~/desenv/escolpi

# Aplicações de desenvolvimento


echo "Instalação finalizada com sucesso! Tenha um bom dia ;-)"
echo "*************************************************************************************"
exit 1
