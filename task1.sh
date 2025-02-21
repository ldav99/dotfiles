#!/bin/bash

#copies the `.vimrc` file from your repository to your user's home directory
cp /vim-config/.vimrc /home/ubuntu 


#installs `Vundle` if `~/.vim/bundle/Vundle.vim` does not exist
if [! -f ~/.vim/bundle/Vundle.vim]; then 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi








