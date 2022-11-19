#!/bin/bash
###########################
#Cleanup file
###########################
#Removes vimrc file
rm -f  $HOME/.vimrc
#Replaces old file path output with nothing
sed 's/source ∼\/.dotfiles\/bashrc_custom//g' $HOME/.bashrc
#Removes .TRASH file from home dir
rm -rf $HOME/.TRASH
