#!/bin/bash

# Remove the .nanorc file in the home directory.
if [ -f ~/.nanorc ]; then
	rm ~/.nanorc
fi

# Remove the line ‘source ∼/.dotfiles/etc/bashrc_custom’ in your .bashrc file in the home directory
sed -i 's:source ~/.dotfiles/etc/bashrc_custom::' ~/.bashrc

# Remove the .TRASH directory from the home directory.
if [ -f ~/.nanorc ]; then
	rm -rf ~/.TRASH
fi
