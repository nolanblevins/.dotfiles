#!/bin/bash
###########################
OS=$(uname)
###########################
#Checks if  current Operating system is Linux

if [[ "$OS" != *"Linux"* ]]; then #checks if operating system is linux
	echo "ERROR" >> linuxsetup.log #if its something other than linux it will write an error to the log
else
	exit #exits loop
fi
###########################
#Checks if vimrc file exists and if it does it chabges the current vimrc to bum_vimrc
if [[ -f "$HOME/.vimrc" ]]; then 
	mv $HOME/.vimrc $HOME/.bup_vimrc
	mkdir -p .TRASH $HOME #if dir doesnt exists in home create dir
	echo ".vimrc changed to .bup_vimrc" >> linuxsetup.log #echos statement to log informing user that the vim rc was backed up
fi
###########################

cat $HOME/etc/vimrc > $HOME/.vimrc #writes our vim rc to real vimrc

echo "source ∼/.dotfiles/etc/bashrc custom" >> $HOME/.bashrc #writes the path to bashrc

