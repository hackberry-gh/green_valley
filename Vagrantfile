# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
    config.vm.box = "precise"
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
    config.vm.synced_folder "./", "/vagrant"
  
    config.vm.provision :shell, inline: <<-SCRIPT
    echo "greenvalley.local" > /etc/hostname
    SCRIPT
    
    config.vm.hostname = "greenvalley.local"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.network :private_network, ip: "10.0.0.40"
  
    config.vm.provider :virtualbox do |vb|
      vb.name = "greenvalley"
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
end