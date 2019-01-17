syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
colorscheme monokain
set nu
"GUI 
set guifont=Monospace\ 11
set guioptions-=r
set guioptions-=L
set guioptions-=T
set belloff=all
"
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
set tags+=.tags
au BufNewFile,BufRead,BufReadPost *.psql set syntax=sql

set pastetoggle=<F2>
set mouse=a
