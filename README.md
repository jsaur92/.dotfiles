# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## linux.sh
This script creates the .TRASH directory in the home directory, redirects the contents of .dotfiles/etc/nanorc to ~/.nanorc, and adds a line of code in ~/.nashrc to activate the bash settings used in this project.
## cleanup.sh
This undoes everything the linux.sh script does, except it does not remove the .TRASH directory.
## Makefile
This calls cleanup.sh followed by linux.sh to set up the bash settings and to make sure that if make is called several times it does not keep adding files and lines when it doesn't need to.
## .nanorc
This is my custom .nanorc configuration for Nano. It sets autoindent, boldtext, mouse tabsize 4, and keycolor blue, red.
## .bashrc
This is my custom .bashrc configuration for Bash. It creates all of the aliases detailed in the Homework 2 instructions for CSCE215, except for the cselab alias since I did not complete this assignment in the cse lab.
