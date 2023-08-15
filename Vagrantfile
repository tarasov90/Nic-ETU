
$script = <<-SCRIPT
apt-get update
 SCRIPT
Vagrant.configure("2") do |config|
  config.vm.box = "centos7"
  config.vm.box_url = "./CentOS-7.box"
  config.vm.hostname = "centos7"
  config.vm.network "private_network", ip:"192.168.56.1", port:"8080"
  #config.ssh.username = "vagrant"
  #config.ssh.password = "vagrant"
  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = "2048"
   end
  #config.vm.provision "shell", inline ""
  config.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
   end
end
