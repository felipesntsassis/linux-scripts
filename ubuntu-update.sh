#!/bin/bash

echo "*******************     SETUP DEVELOPMENT ENVIROMENT - UBUNTU     *******************"

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
sudo apt install -y gimp gimp-plugin-registry gimp-data-extras
sudo apt install -y inkscape
sudo apt install -y shotwell
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y fonts-firacode
sudo apt install -y network-tools
sudo apt install -y openssh-server

sudo apt install -y tilix
# Configurar o Tilix como terminal padrão
sudo update-alternatives --config x-terminal-emulator
sudo apt install -y mariadb-server

sudo apt install -y zsh
chsh -s $(which zsh)


sudo snap install --classic skype
sudo snap install spotify

# Criar ambiente de desenvolvimento
mkdir -p ~/desenv/projetos/pedidoagora
mkdir -p ~/desenv/projetos/rhf

git config --global user.name "Felipe dos Santos Assis"
git config --global user.email "felipesntsassis@gmail.com"

echo "Instalação finalizada com sucesso! Tenha um bom dia ;-)"
echo "*************************************************************************************"
exit 1
