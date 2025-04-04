#!/bin/bash

if [[ "$EUID" -eq 0 ]]; then
	if command -v apt-get &> /dev/null; then
 		read -p  'CUDA Toolkit v12.8 is about to be installed. Continue with program? Y/N ' confirm
		if [[ "$confirm" == "y" ]]; then
			if [[ ! -f ~/usr/local/cuda ]]; then
				sudo apt install -y gcc
				wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
				sudo mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
				wget https://developer.download.nvidia.com/compute/cuda/12.8.1/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.1-570.124.06-1_amd64.deb
				sudo dpkg -i cuda-repo-ubuntu2404-12-8-local_12.8.1-570.124.06-1_amd64.deb
				sudo cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
				sudo apt-get update
				sudo apt-get -y install cuda-toolkit-12-8

				echo 'Program complete, test installation by running nvcc --version'
			else
				echo 'This program is already installed on your system.'
				exit 1
			fi
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
