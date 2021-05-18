#!/bin/sh
# this script configures my dotfiles to work in an alpine linux container

# vars
ZSH_DIR=/usr/share/zsh/plugins
REPO=/home/skovati/dev/git/dotfiles

# mkdirs
sudo mkdir $ZSH_DIR
mkdir /home/skovati/.config/nvim

# install zsh plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_DIR
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_DIR

# symlinks for tty dev
ln -s $REPO/vim/.vimrc          $HOME/.vimrc
ln -s $REPO/tmux/.tmux.conf     $HOME/.tmux.conf
ln -s $REPO/nvim/init.vim       $HOME/.config/nvim/init.vim
