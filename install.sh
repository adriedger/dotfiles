#!/bin/bash
# To run postgres on ubuntu modify /etc/postgresql/9.5/main/pg_hba.conf and modify md5 to trust
# for windows copy this: LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
# guake settings: monospace 12, 60% opacity, full-screen

cp -r .vim/ ~
cp .vimrc .inputrc ~
echo "alias sql='psql -U postgres'" >> ~/.bashrc
echo "alias stu='ssh driedgera2@students.cs.macewan.ca -X'" >> ~/.bashrc
echo "alias mirage='mirage &> /dev/null'"
echo "alias dus='du -sh *'"
echo "alias dfh='df -h'"
echo "alias phps='php -S localhost:8000'"
