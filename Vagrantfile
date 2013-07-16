# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-berkshelf"
Vagrant.require_plugin "vagrant-omnibus"

Vagrant.configure("2") do |config|
  config.vm.hostname = "berkshelf-berkshelf"
  config.vm.box = "opscode_ubuntu-12.04_provisionerless"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.define :client do |v|
    v.vm.provision :chef_solo do |chef|
      chef.run_list = [
        "recipe[berkshelf::default]"
      ]
    end
  end

  config.vm.define :api_server do |v|
    v.vm.provision :chef_solo do |chef|
      chef.run_list = [
        "recipe[berkshelf::api_server]"
      ]
    end
  end
end
