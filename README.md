# How to create the VM for the DevOps showcase

## Setup VirtualBox
On your local machine install the latest versions of: 

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 
* [Oracle VM VirtualBox Extension Pack](https://www.virtualbox.org/wiki/Downloads) 

## Setup Vagrant
On your local machine install the latest version of:
* [Vagrant](https://www.vagrantup.com/)
* [Vagrant vbguest plugin](https://github.com/dotless-de/vagrant-vbguest), execute using command line:
```
> vagrant plugin install vagrant-vbguest
```

## Start the VM
Just copy or clone the three files `Vagrantfile`, `setup.sh` and 
`startAnsible.sh` into a new directory on your local machine. The name and location of the directory is not relevant.

Finally execute:
```
vagrant up
```

This will download the adesso Virtualbox image, launch the VM and execute ansible using the roles 
in the ansible playbook.

Enjoy!
