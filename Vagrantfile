Vagrant.configure(2) do |config|
    config.vm.box = "centos/7"
    config.vm.network "private_network", ip: "192.168.55.20"
    config.vm.synced_folder ".", "/home/vagrant/dev", nfs: true

    config.vm.provider "virtualbox" do |v|
        v.name = "golangvbox"
    end

    config.vm.provision "shell", path: "provision.sh", privileged: true, binary: false
end
