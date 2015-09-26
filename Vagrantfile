Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end
  config.vm.box = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network "private_network", ip: "10.10.10.10"
  config.vm.hostname = 'myproject.dev'
  config.vm.provision :shell, path: "_vagrant/provisioner.sh", 
    args: [
        # mysql root password
        'wickedpassword'
    ]

  # requires plugin: vagrant-hostmanager
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
end