# .dotfiles
Just my dotfiles. Nothing to see here. 

## Installation
**Note:** These dotfiles must only be used for systems using Zsh.
1. Download [this gist](https://gist.githubusercontent.com/mike-fam/2e96087b42abd80776ad5d93c11c7c03/) and run the script
```shell
curl -fsSL https://gist.githubusercontent.com/mike-fam/2e96087b42abd80776ad5d93c11c7c03/raw/dotfiles_install.sh | bash -s -- git@github.com:mike-fam/.dotfiles.git  # Change this to your repository
```
2. This will download the dotfiles in this repository and replace all your existing dotfiles.
3. Your replaced dotfiles are backed up in the `~/dotfiles-backup` folder.
4. Restart your terminal and enjoy.

## Usage
The `dotfiles_install.sh` script creates a new alias called `dotfiles` to manage your dotfiles.
This script wraps `git` and can be used with any git command. For example, to add `.vimrc` to this repository, run
```
dotfiles add .vimrc
dotfiles commit -m "Add .vimrc to dotfiles"
dotfiles push
```
