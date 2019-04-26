#!/usr/bin/env bash

sed -i -e 's~ch.archive.ubuntu.com/ubuntu/~de.archive.ubuntu.com/ubuntu/~' /etc/apt/sources.list

apt-add-repository ppa:ansible/ansible -y

# upgrade Ubuntu
unset UCF_FORCE_CONFFOLD
export UCF_FORCE_CONFFNEW=YES
ucf --purge /boot/grub/menu.lst
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade

# Install Ansible
apt-get install ansible -y
ansible --version

# Install Git
apt-get install git -y

# Install Unity Desktop and remove Gnome
apt-get install ubuntu-unity-desktop unity-tweak-tool compizconfig-settings-manager compiz-plugins -y -o Dpkg::Options::="--force-confnew" --force-yes -fuy
#apt-get remove ubuntu-gnome-desktop gnome-shell -y

