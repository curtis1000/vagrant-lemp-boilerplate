Vagrant.configure("2") do |config|
  config.vm.box = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.provision :shell, path: "_vagrant/bootstrap.sh"
  config.vm.network "private_network", ip: "10.10.10.10"
  config.vm.hostname = 'myproject.dev'

  # requires plugin: vagrant-hostmanager
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
end