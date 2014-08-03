#Dotfiles by Aaron Torres
Inspired by https://github.com/palcu/dotfiles


## Getting Started
* the `playbooks` folder contains Ansible that provisions a machine with apps and config
* ZSH config through antigen
* Vim config through Vundle


## Setup
From a new Vagrant machine or fresh ubuntu image

```bash
sudo apt-get update
sudo apt-get install git python-pip python-dev
sudo pip install ansible
cd ~/; git clone git@github.com:agtorre/dotfiles.git
cd ~/dotfiles/playbooks
ansible-playbook -i inventory vagrant.yml --ask-sudo-pass
```
