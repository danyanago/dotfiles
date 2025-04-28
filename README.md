## Task 4: Dotfiles Repository Content 


This repository contains configuration files and setup scripts for customizing a Linux user environment, including Vim, Bash, and essential tool installations completed during the semester from task 1 - 3.


### Essentials on the repos

* homefiles/ — Bash environment customizations (.bashrc, .bash_aliases, setup scripts)

* sys-installs/ — Installation script for AWS CLI

* setup_vim.sh — Script to configure Vim and install plugins

* fs-research.md, personal-backup.md — Research and personal notes

* Issues - Retrospective on past tasks and notes for future use 
 
 #### To clone the Repository and Get into the directory :

  ```
git clone https:// https://github.com/danyanago/dotfiles/tree/main.git
cd dotfiles

  ```
### Vim Setup
 Which will be detailled in the README.md of the repository.
 ```
bash setup_vim.sh

```
** Installs Vundle

** Copies .vimrc (keeping a backup copy is a smart move)

** Installs plugins (Dracula theme, Fugitive)

PS: plugins can be change depending on preferences i tried many it just need a script adjustment.

### AWS CLI Install:

```
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

```
This script is a corrected version of what I previously used when installing for the first time.

### Reference 

[Installing, updating, and uninstalling the AWS CLI version 1 on Linux](https://docs.aws.amazon.com/cli/v1/userguide/install-linux.html)

