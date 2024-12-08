#!/bin/bash

# Check to see if the operating system type is 'Linux'
if [ $(uname) = 'Linux' ]; then
	
	#Create the '.TRASH' directory in the home directory if it doesn't exist already.
	mkdir -p ~/.TRASH
	
	#If .nanorc exists in the home directory, change its name to .bup_nanorc and dump a message to linuxsetup.log explaining it.
	if [ -f ~/.nanorc ]; then
		mv ~/.nanorc ~/.bup_nanorc
		echo "current .nanorc file has been changed to '.bup_nanorc'" >> linuxsetup.log
	fi

	#Redirect the contents of etc/nanorc to a file called .nanorc in the home directory.
	touch ~/.nanorc
	cat etc/nanorc > ~/.nanorc
	
	#Add the statement ‘source ∼/.dotfiles/etc/bashrc custom’ to the end of the .bashrc file located in your home directory.
	touch ~/.bashrc
	echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc

else
	touch linuxsetup.log
	echo "Operating system other than Linux detected. Script has failed." >> linuxsetup.log
	exit
fi

