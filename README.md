# .dotfiles
Just my dotfiles. Nothing to see here. 

## Installation
**Note:** These dotfiles must only be used for systems using Zsh.
1. Download [this gist](https://gist.githubusercontent.com/mike-fam/2e96087b42abd80776ad5d93c11c7c03/raw/0af557fec1bebf853ff0021b0db1582a0e8814dc/dotfiles_install.sh) and run the script
```shell
curl -O https://gist.githubusercontent.com/mike-fam/2e96087b42abd80776ad5d93c11c7c03/raw/dotfiles_install.sh
chmod +x dotfiles_install.sh
./dotfile_install.sh git@github.com:mike-fam/.dotfiles.git  # change this to your own repository
```
2. This will download the dotfiles in this repository and replace all your existing dotfiles.
3. Your replaced dotfiles are backed up in the `~/dotfiles-backup` folder.
4. Restart your terminal and enjoy.

## Usage
The `dotfiles_install.sh` script sets up a new alias called `dotfiles` that can be used to manage your dotfiles.
This script wraps `git` and can be used with any git command. For example, to add `.vimrc` to this repository, run
```
dotfiles add .vimrc
dotfiles commit -m "Add .vimrc to dotfiles"
dotfiles push
```
