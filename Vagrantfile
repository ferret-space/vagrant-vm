Vagrant.require_version ">= 1.7.0"
	
Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu-18.04-201808"
	config.vm.box_url = "https://lmv-ulm.adesso.ch/external_media/ubuntu-18.04-201808.box"

	config.vm.provider "virtualbox" do |vb|
	    vb.memory = 16392
        vb.cpus = 8
		vb.name = "Demo"
		vb.gui = true
	end

	config.vm.provision :shell, :privileged => true, :path => "setup.sh"
	config.vm.provision :shell, :privileged => false, :path => "startAnsible.sh"
end
