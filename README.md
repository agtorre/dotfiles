#Dotfiles by Aaron Torres
Inspired by https://github.com/palcu/dotfiles


## Getting Started
* the `playbooks` folder contains Ansible that provisions a machine with apps and config
* ZSH config through antigen
* Vim config through Vundle


## Setup
From a new Vagrant machine:

```bash
sudo apt-get update
sudo apt-get install python-pip
sudo pip install ansible
git clone htts://github.com/agtorre/dotfiles
cd ~/dotfiles/playbooks
ansible-playbook -i inventory vagrant.yml
```
