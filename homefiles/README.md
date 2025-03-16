# Dotfiles - Homefiles

This repository contains configuration files and scripts for setting up a customized Bash environment on a Linux-based system. The files in the `homefiles` folder are specifically aimed at improving the user experience by creating an organized and efficient Bash setup. These configurations are designed to be easily linked to a user's home directory, ensuring that any system setup remains modular and easily updatable.

## Files in `homefiles` Directory

### 1. `.bashrc`
The `.bashrc` file is the main configuration file for the Bash shell. It is sourced every time a new terminal session is started. This file contains environment variables, settings, and customizations that help streamline the terminal environment. The file includes:

- Aliases for frequently used commands.
- Custom prompt settings.
- Color support for common commands like `ls`, `grep`, and `fgrep`.
- Settings for enabling shell completion and other helpful features.

### 2. `.bash_aliases`
The `.bash_aliases` file contains all the aliases that make command-line tasks more efficient. These aliases are sourced from the `.bashrc` file. Common aliases might include:

- `ls` with color options.
- `ll` to list files with detailed information.
- `alert` to notify the user when a long-running command finishes.

By separating aliases into a dedicated file, this setup allows for easier maintenance and clearer structure.

### 3. `setup_bashrc.sh`
This script automates the setup process for the user’s Bash environment. It performs the following tasks:

- Backs up the existing `.bashrc` file.
- Creates a symbolic link from the `.bashrc` and `.bash_aliases` files in the `homefiles` directory to the user’s home directory.
- Checks for essential packages (e.g., `net-tools`, `curl`, and `git`) and notifies the user if any are missing, along with instructions on how to install them.
- Prompts the user to reload their Bash environment using the `source ~/.bashrc` command.

### 4. `README.md`
This file, which provides an overview of the files in the `homefiles` directory, how they are used, and instructions for setting them up.

## Installation Process (not tailored to me, set to of general reference)

1. Clone this repository into your home directory (or another directory of your choice):
    ```bash
    git clone https://repository-url.git
       
    ```

2. Navigate to the `homefiles` directory:
    ```bash
    cd ~/dotfiles/homefiles
    ```

3. Run the `setup_bashrc.sh` script:
    ```bash
    bash setup_bashrc.sh
    ```

    This will:
    - Back up your current `.bashrc`.
    - Create a symbolic link to the `.bash_aliases` and `.bashrc` files from this repository.
    - Check for missing packages and notify you if anything needs to be installed.

4. Reload your shell environment by running:
    ```bash
    source ~/.bashrc
    ```

    Or log out and log back in for the changes to take effect.

## Citation and References

This setup is inspired by various open-source contributions and best practices for customizing the Bash environment, also from the material presented in the class. The following resources were referenced while creating the scripts and configuration files:

- **Bash Documentation**: https://www.gnu.org/software/bash/manual/
- **Bash Aliases and Functions**: https://www.digitalocean.com/community/tutorials
- **Dotfiles Setup Best Practices**: https://github.com/mathiasbynens/dotfiles
- **Bash Completion Features**: https://bash-completion.readthedocs.io/en/latest
- **The Ultimate Bash Aliases**: https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c
- **Linux Command Cheat Sheet**: https://www.linuxcommand.org/
- PS: I used the help of AI in the establishment of my script.

### Prompt: 
  1. Script to back up my current `.bashrc`,

  2. To this script, How to create a sym link with a script from a repository to an alias,

  3. Then I put the script together and gave it back to ask how to check for missing packages? 
