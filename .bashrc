
## Andre's settings
alias stu='ssh driedgera2@students.cs.macewan.ca -X'
alias mirage='mirage &> /dev/null'
alias py='python3'
alias python='python3'
alias py3='python3'
#keep vim from being disrupted by ctrl-s and ctrl-q:
stty -ixon
alias dfh='df -h'
alias dusa='du -sch .[!.]* * |sort -h'
alias artcloud='ssh root@cloud.artaugmentedreality.app'
#better replacement for phps
alias pyps='py -m http.server 8000'
alias vim-update-plugins='ls -d ~/.vim/pack/my-plugins/start/* | xargs -I{} git -C {} pull'
