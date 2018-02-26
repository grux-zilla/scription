#!/bin/bash

#fresh system script
#update && upgrade to get the latest most freshest packages
# so lets get the basics of update && upgrade cared for

apt update && apt upgrade -y

#need some HWE goodness for 16.04 installs
apt-get install --install-recommends linux-generic-hwe-16.04 xserver-xorg-hwe-16.04

#now that we have an updated system, we need a few essential packages to build our system

apt install make git screenfetch gdebi -y

#clean up and remove some apps we do not USER

apt purge firefox gnome-mines gnome-sudoku gnome-mahjongg aisleriot transmission-gtk transmission-common

#time to add repos
#Oracle Java 8 ppa

add-apt-repository ppa:webupd8team/java

#Atom text editor

add-apt-repository ppa:webupd8team/atom

#Google chrome

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb stable main" >> /etc/apt/sources.list.d/google-chrome.list'

#google music player desktop app

wget -qO - https://gpmdp.xyz/bintray-public.key.asc | sudo apt-key add -
echo "deb https://dl.bintray.com/marshallofsound/deb debian main" | sudo tee -a /etc/apt/sources.list.d/gpmdp.list

#Discord wget and install

wget -O discord-0.0.2.deb https://discordapp.com/api/download?platform=linux&format=deb
dpkg -i discord-0.0.2.deb

#screen recorder

sudo apt-get install obs-studio

#Cubic ISO Editor

add-apt-repository ppa:cubic-wizard/release

#Google drive ppa

add-apt-repository ppa:alessandro-strada/ppa

#lets get sources updated so we can do stuff with these repos

apt update

#let the installs begin

sudo apt-get install qemu-kvm libvirt-bin virtinst bridge-utils virt-manager


apt install youtube-dl ssh gnome-tweak-tool

apt install google-chrome-stable

apt install google-music-desktop-player

apt install oracle-java8-installer

apt install atom

apt install cubic

apt install green-recorder

apt install google-drive-ocamlfuse

#time to GIT stuff

git clone https://github.com/micheleg/dash-to-dock

cd dash-to-dock

sudo make && sudo make install

git clone https://github.com/phocean/TopIcons-plus.git

d TopIcons-plus

sudo make && sudo make install

git clone https://github.com/tliron/install-gnome-themes

cd install-gnome-themes

./install-gnome-themes

reboot
