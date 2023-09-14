
$script = <<-SCRIPT
apt-get update
 SCRIPT
Vagrant.configure("2") do |config|
  config.vm.box = "centos"
  config.vm.box_url = "./CentOS-7.box"
  config.vm.hostname = "centos"
  config.vm.network "private_network", ip:"192.168.56.5"
  #config.ssh.username = "vagrant"
  #config.ssh.password = "vagrant"
  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "2000"
   end
  #config.vm.provision "shell", inline ""
  config.vm.provision "ansible" do |ansible|
  	ansible.inventory_path = "hosts"
  	#ansible.limit = "centos"
        ansible.playbook = "playbook.yml"
   end
end
