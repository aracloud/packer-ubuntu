#!/bin/bash -eux

# Install  tools needed
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
software-properties-common \
ansible \
net-tools

