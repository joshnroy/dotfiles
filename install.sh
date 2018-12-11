#!/bin/bash
git pull;
rm $HOME/.config/nvim/init.vim
rm $HOME/.tmux.conf
# ln -s $HOME/dotfiles/vimrc $HOME/.vimrc;
mkdir -p $HOME/.config/nvim
ln -s $HOME/dotfiles/vimrc $HOME/.config/nvim/init.vim;
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf;
echo "linked files";
