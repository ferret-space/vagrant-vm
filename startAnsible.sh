#!/usr/bin/env bash

cd /home/vagrant
mkdir projects
cd projects
git clone https://git.adesso.ch/denis.pingin/demo-vm.git
cd demo-vm
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml
