# Task 3

For this assignment I chose to install CUDA. I just had to install it for Windows so I figured might as well do it from the command line now.

* sudo apt install -y gcc
  * Makes sure they have gcc installed which CUDA needs
* wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
  * Gets file dependency from nvidia website 
* sudo mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
  * Move the file into its respective directory
* wget https://developer.download.nvidia.com/compute/cuda/12.8.1/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.1-570.124.06-1_amd64.deb
  * Get the local installer file from nvidia website
* sudo dpkg -i cuda-repo-ubuntu2404-12-8-local_12.8.1-570.124.06-1_amd64.deb
  * Install package from previous step
* sudo cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
  * Copy key from installed directory to the user/share directory
* sudo apt-get update
  * Make sure apt-get is up to date
* sudo apt-get -y install cuda-toolkit-12-8
  * Install the most recent CUDA toolkit silently. 

Sources:
  * For checking the package manager I used the google generated response. I searched "bash script check system package manager"
  * I used [this guide](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/) to help with the installation. I did omit some verification steps. It also directed me to [this website](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_local) and once I selected all my options it told me what commands to run.
