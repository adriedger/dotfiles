#!/bin/bash
# for windows linux subsystem copy this to bashrc: LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

cp -r .vim/ ~
cp .vimrc .inputrc ~
cat .bashrc >> ~/.bashrc

#install vim plugins
mkdir -p ~/.vim/pack/my-plugins/start/
cd ~/.vim/pack/my-plugins/start/
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/severin-lemaignan/vim-minimap
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/tpope/vim-commentary.git
git clone https://github.com/fatih/vim-go
