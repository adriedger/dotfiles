#!/bin/bash
# To run postgres on ubuntu modify /etc/postgresql/9.5/main/pg_hba.conf and modify md5 to trust
# for windows copy this to bashrc: LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
# guake settings: monospace 12, 60% opacity, full-screen

cp -r .vim/ ~
cp .vimrc .inputrc ~
cat .bashrc >> ~/.bashrc

#install vim plugins
cd ./vim/pack/my-plugins/start/
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/severin-lemaignan/vim-minimap
