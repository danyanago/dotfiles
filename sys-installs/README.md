# sys-installs

This folder contains install scripts for essential system tools.

## install-awscli.sh

This script installs the AWS Command Line Interface (CLI) version 2 on Ubuntu Linux systems.

### What it does

- Checks that the script is run as root
- Confirms `apt` package manager is available
- Prompts user before proceeding
- Checks if the `aws` command already exists (to avoid name conflicts)
- Installs required dependencies (`curl`, `unzip`)
- Downloads the official AWS CLI v2 installer
- Installs AWS CLI silently
- Provides a confirmation message after installation

### How to use

```bash
sudo ./install-awscli.sh

After the script completes, verify the installation with:

aws --version


References
AWS CLI Installation Guide (Official) - Used for CLI install steps and download URL.

AI Use Disclosure
This script was developed with help from OpenAI’s ChatGPT to guide logic structure, shell scripting syntax, and documentation format.
Prompt used: Write a bash script to install AWS CLI on Ubuntu with checks for root, apt, and existing aws command

