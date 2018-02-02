#!/bin/bash
# To run postgres on ubuntu modify /etc/postgresql/9.5/main/pg_hba.conf and modify md5 to trust
# To get vim 8.0 -> sudo add-apt-repository ppa:jonathonf/vim
# for windows copy this: LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

cp -r .vim/* ~/.vim/
cp .vimrc .inputrc ~
echo "export GOPATH=$HOME/.go" >> .bashrc
echo "alias stu='ssh driedgera2@students.cs.macewan.ca'" >> .bashrc
echo "alias sql='psql -U postgres'" >> .bashrc
