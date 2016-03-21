# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

username = Etc.getlogin
dirname = ::File.basename(::File.dirname(__FILE__))

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # For Centos 7 simply "yum install -y epel-release; yum install -y redis" should be ok

  config.vm.provision :shell, path: 'install-base.sh'
  config.vm.provision :shell, path: 'install-redis.sh'
  config.vm.provision :shell, path: 'install-ruby.sh'

  # Config for Virtualbox provider
  config.vm.provider "virtualbox" do |_,override|
    override.vm.box = "boxcutter/centos67"
    override.vm.network "private_network", ip: "192.168.133.40"
  end

  # To speedup installation of packages on slow networks
  # run `vagrant plugin install vagrant-cachier` once
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box

    config.cache.synced_folder_opts = {
      type: :nfs,
      mount_options: ['rw', 'vers=3', 'tcp', 'nolock']
    }
  end
  config.ssh.forward_agent = true
end
