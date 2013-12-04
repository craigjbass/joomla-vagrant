# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "CentOS 6.4 x86_64"
    config.vm.box_url = "https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box"
    config.vm.network :private_network, ip: "192.168.33.3"
    config.ssh.forward_agent = true
    config.vm.provision :shell, :path => "vagrant/bootstrap.sh"
end
