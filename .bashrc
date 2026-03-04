
## Andre's settings
alias ipy='ipython3'
#keep vim from being disrupted by ctrl-s and ctrl-q:
stty -ixon
alias dfh='df -h'
alias dusa='du -sch .[!.]* * |sort -h'
alias cloud='ssh adriedger@cloud.artaugmentedreality.app'
#localhost server
alias pyserver='py -m http.server 8000'
alias vim-update-plugins='ls -d ~/.vim/pack/my-plugins/start/* | xargs -I{} git -C {} pull'
#AI
alias openclaw='ssh -N -L 18789:127.0.0.1:18789 adriedger@138.197.161.75 & xdg-open "http://127.0.0.1:18789"'
