#!/usr/bin/env bash

cd /home/vagrant
mkdir projects
cd projects
git clone https://git.adesso.ch/devops/devops-showcase/vm.git
cd vm
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml
