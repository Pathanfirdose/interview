########################
### ANSIBLE COMMANDS ###
########################

###############################
### ANSIBLE AADHOC COMMANDS ###
###############################

ansible -i 172.31.27.28, all -e ansible_user=ec2-user -e ansible_password=DevOps321 -m ping

ansible -i 172.31.27.28, all -e ansible_user=ec2-user -e ansible_password=Devops321 -b -m dnf -a "name=nginx state=installed"

ansible -i 172.31.27.28, all -e ansible_user=ec2-user -e ansible_password=DevOps321 -b -m service -a "name=nginx state=started"

###############################
   ### PLAYBOOK COMMANDS ###
###############################

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=Devops321 01-ping.yaml

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 02-multi-play.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 03-nginx.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 04-variables.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 05-task-vars.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 06-vars-files.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 07-vars-prompt.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 08-vars-from-inventory.yaml 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 09-vars-from-args.yaml -e "NAME=firdose GREETING=morning" 

ansible-playbook -i inventory.ini -e ansible_user=ec2-user -e ansible_password=DevOps321 10-vars-preference.yaml -e "COURSE=devops with orgs" 

/etc/ansible/ansible.cfg