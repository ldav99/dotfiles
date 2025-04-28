# Dotfiles README
Dotfiles assignements for CEG-2410.<br><br>

## Summary
## Vim-Config
  * Copy of vimrc file from vundle. This contains the plugins that installed and use from Task1.
      * These were the [Anderson Color Scheme](https://vimawesome.com/plugin/anderson-vim) and [Nerd Tree](https://vimawesome.com/plugin/nerdtree-red).

## HomeFiles
  * This contains a copy of all the bash alliases I implemented from [awesome alliases](https://github.com/vikaskyadav/awesome-bash-alias). It also contains a script to symbolically link the .bash_alias to the users home directory.
      * Some of these aliases included `gaa` for `git add -A` and `gs` for  `git status`

## Sys-Installs
  * This contains the script from task three that helps the user easily install CUDA via the command line.
      * To help with the installation [this guide](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/) was used. It could also be refered to if something were to go wrong if I were to try and implement this somewhere else in the future.
   
## Task 4 Fix
  * For my task 4 issue, I fixed a problem with my task 1 script where it wouldn't copy my cloned GitHub folder.
  * To change this I changed the copy path from `/vim-config/.vimrc` to `/home/ubuntu/dotfiles/vim-config/.vimrc` So that way it was actually taking it from the more specific file path

## How to clone / utilize
 * Have Github Desktop installed
 * On the repo click the green code button
 * Select Open with Github Desktop
 * Select the local path you want to put it in and click clone
 * From there you could download/copy over all the scripts and put them in their respective folders to replicate.

## Retrospective
I really enjoyed these assignments. The one I liked the most was probably the Vim-Config one. I have always complained about default vim and was always to lazy/afraid to make any big changes. These assignments also got me more experience with bash scripting which is nice becuase scripts/automation are extremly helpful and look good on resumes.
