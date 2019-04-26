Vagrant.require_version ">= 1.7.0"
	
Vagrant.configure(2) do |config|
	config.vm.box = "peru/ubuntu-18.10-desktop-amd64"
	config.vm.box_version = "20190401.01"

	config.vm.provider "virtualbox" do |vb|
	    vb.memory = 16392
        vb.cpus = 8
		vb.name = "Ferret Space"
		vb.gui = true
	end

	config.vm.provision :shell, :privileged => true, :path => "setup.sh"
	config.vm.provision :shell, :privileged => false, :path => "startAnsible.sh"
	
	config.vm.provider "virtualbox" do |v|
		v.customize ["modifyvm", :id, "--accelerate3d", "on"]
	end

end
