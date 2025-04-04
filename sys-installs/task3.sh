#!/bin/bash

if [[ "$EUID" -eq 0 ]]; then
	if command -v apt-get &> /dev/null; then
 		read -p  'CUDA Toolkit v12.8 is about to be installed. Continue with program? Y/N ' confirm
		if [[ "$confirm" == "Y" ]]; then
			echo 'continue'
		else
			echo 'Exiting Program'
			exit 1
		fi
	else
		echo 'Exiting Program... This program requires apt be the package manager'
		exit 1
	fi
else
	echo 'Exiting Program... Program requires sudo or root to run properly.'
	exit 1
fi
