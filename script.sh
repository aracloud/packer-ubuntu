#!/bin/bash -eux

# Install Ansible repository.
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
software-properties-common \
ansible \
net-tools

# sudo apt-add-repository ppa:ansible/ansible -y

# Install Ansible.
#sudo apt -y update
#sudo apt -y install ansible

