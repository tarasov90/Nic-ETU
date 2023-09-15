Последовательность действий для получения сборочного docker-контейнера и sqlite3.so  
Перед использованием убедитесь, что на вашей системе установлены VM Virtual Box, Python, Ansible, Vagrant  
1. Поместите следующие файлы в общую директорию:    #TODO А почему бы не "git clone https://github.com/tarasov90/Nic-ETU.git"?
  hosts  
  CentOS-7.box    #TODO Хорошо бы указать ссылку, где брать образ, а заодно и версию этого образа
  Vagrantfile  
  ansible.cfg  
  playbook.yml  
  dockerfile    #TODO Есть ли какие-то веские причины чтобы не следовать соглашению об именовании Dockerfile? https://docs.docker.com/engine/reference/commandline/build/#file
2. Перейдите в эту директорию  
3. Проинициализируйте vm командой "vagrant init"    #TODO и получаем ошибку, так как Vagrantfile уже создан
4. Запустите vm командой "vagrant up"  
5. После успешного запуска, запустите исполнение ansible-playbook командой "ansible-playbook --limit centos playbook.yml"    #TODO Но в конфигурации Vagrantfile уже используется сценарий автоматического запуска ansible-playbook`а. Точно есть необходимость в повторном ручном запуске?
   5.1 Во время исполнения данной команды система может запросить связь с vm с использованием fingerprint, необходимо ввести "yes"    #TODO очень не хотелось бы это делать вручную, уверен, что есть способ от этого ручного шага избавиться (https://www.google.com/search?q=ansible+disable+fingerprint+check)
6. Если playbook отработал без ошибок, то файл "sqlite3.so" будет находиться на vm в директории "home/docker"  

Редактирование файлов  
ВНИМЕНИЕ! ВНЕСЕНИЕ ЛЮБЫХ ИЗМЕНЕНИЙ В КОНФИГУРАЦИОННЕ ФАЙЛЫ МОЖЕТ ПРИВЕСТИ К НАРУШЕНИЕ РАБОТОСПОСОБНОСТИ!  
vagrantfile:  
config.vm.box_url = "./CentOS-7.box" - путь к файлу с образом системы для vm  
config.vm.hostname = "centos7" - название vm  
config.vm.network "private_network", ip:"192.168.56.5" - ip vm, если изменяете, то не забудьте так же изменить файл hosts  
vb.gui = false - вывод графического интерфейса vm  
vb.memory = "4048" - количество ОЗУ vm, в Мб  
