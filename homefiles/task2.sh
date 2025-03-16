#!/bin/bash

#symbolically link the .bash_alias to the user home directory
ln -s ~/.bash_aliases ~/.bash_aliasesSYM

#Prompt the user to reload their environment.
echo Please refresh your environment by running 'source .bash_aliasesSYM'

