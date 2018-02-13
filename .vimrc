syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme 256-grayvim
colorscheme monokain
set nu
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
set tags+=.tags
au BufNewFile,BufRead,BufReadPost *.psql set syntax=sql
let g:go_highlight_functions = 1
