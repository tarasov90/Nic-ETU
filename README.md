Последовательность действий для получения сборочного docker-контейнера и sqlite3.so
Перед использованием убедитесь, что на вашей системе установлены VM Virtual Box, Python, Ansible, Vagrant
1. Поместите следующие файлы в общую директорию:
  hosts
  CentOS-7.box
  Vagrantfile
  ansible.cfg
  playbook.yml
  dockerfile
2. Перейдите в эту директорию
3. Проинициализируйте vm командой "vagrant init"
4. Запустите vm командой "vagrant up"
5. После успешного запуска, запустите исполнение ansible-playbook командой "ansible-playbook --limit centos playbook.yml"
   5.1 Во время исполнения данной команды система может запросить свзяь с vm с использованием fingerprint, необходимо ввести "yes"
6. Если playbook отработал без ошибок, то файл "sqlite3.so" будет находится на vm в директории "home/docker"
