#!/bin/bash
# To run postgres on ubuntu modify /etc/postgresql/9.5/main/pg_hba.conf and modify md5 to trust
# To get vim 8.0 on ubuntu 16.0 -> sudo add-apt-repository ppa:jonathonf/vim
# for windows copy this: LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
# guake settings: monospace 12, 60% opacity, full-screen

cp -r .vim/ ~
cp .vimrc .inputrc ~
echo "alias sql='psql -U postgres'" >> ~/.bashrc
