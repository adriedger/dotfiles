" Sublime-like color theme"
" Andre's version

hi clear

set background=dark
if version > 580
	" no guarantees for version 5.8 and below, but this makes it stop
	" complaining
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
	let s:molokai_original = g:molokai_original
else
	let s:molokai_original = 0
endif


"
" Support for 256-color terminal
"
if &t_Co > 255
	hi Boolean         ctermfg=135
	hi Character       ctermfg=144
	hi Number          ctermfg=135
	hi String          ctermfg=222
	hi Conditional     ctermfg=161               cterm=bold
	hi Constant        ctermfg=135               cterm=bold
	hi Cursor          ctermfg=16  ctermbg=253
	hi Debug           ctermfg=225               cterm=bold
	hi Define          ctermfg=81
	hi Delimiter       ctermfg=241

	hi DiffAdd                     ctermbg=24
	hi DiffChange      ctermfg=181 ctermbg=239
	hi DiffDelete      ctermfg=162 ctermbg=53
	hi DiffText                    ctermbg=102 cterm=bold

	hi Directory       ctermfg=118               cterm=bold
	hi Error           ctermfg=219 ctermbg=0
"removed tab backfill in python    
	hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
	hi Exception       ctermfg=160               cterm=bold
	hi Float           ctermfg=135
	hi FoldColumn      ctermfg=67  ctermbg=16
	hi Folded          ctermfg=67  ctermbg=16
	hi Function        ctermfg=118
	hi Identifier      ctermfg=208
	hi Ignore          ctermfg=244 ctermbg=232
	hi IncSearch       ctermfg=193 ctermbg=16

	hi Keyword         ctermfg=161               cterm=bold
	hi Label           ctermfg=229               cterm=none
	hi Macro           ctermfg=193
	hi SpecialKey      ctermfg=81

	hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
	hi ModeMsg         ctermfg=229
	hi MoreMsg         ctermfg=229
	hi Operator        ctermfg=161

	hi Comment	   ctermfg=244
	hi ColorColumn	   ctermbg=236 guibg=black
	" complete menu
	hi Pmenu           ctermfg=81  ctermbg=16
	hi PmenuSel                    ctermbg=244
	hi PmenuSbar                   ctermbg=232
	hi PmenuThumb      ctermfg=81

	hi PreCondit       ctermfg=159	cterm=bold
	hi PreProc         ctermfg=159
	hi Question        ctermfg=81
	hi Repeat          ctermfg=161               cterm=bold
	hi Search          ctermfg=253 ctermbg=66

	" marks column
	hi SignColumn      ctermfg=118 ctermbg=235
	hi SpecialChar     ctermfg=161               cterm=bold
	hi SpecialComment  ctermfg=245               cterm=bold
	hi Special         ctermfg=81  ctermbg=232
	hi SpecialKey      ctermfg=245

	hi Statement       ctermfg=161               cterm=bold
	hi StatusLine      ctermfg=238 ctermbg=253
	hi StatusLineNC    ctermfg=244 ctermbg=232
	hi StorageClass    ctermfg=208
	hi Structure       ctermfg=81
	hi Tag             ctermfg=161
	hi Title           ctermfg=166
	hi Todo            ctermfg=231 ctermbg=232   cterm=bold

	hi Typedef         ctermfg=81
	hi Type            ctermfg=81                cterm=none
	hi Underlined      ctermfg=244               cterm=underline

	hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
	hi VisualNOS                   ctermbg=238
	hi Visual                      ctermbg=235
	hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
	hi WildMenu        ctermfg=81  ctermbg=16

	hi CursorLine                  ctermbg=234   cterm=none
	hi CursorColumn                ctermbg=234
	hi LineNr          ctermfg=250
	" Background in Tabs
	hi TabLineFill     ctermfg=Black ctermbg=Black
	" Currently active tab
	hi TabLineSel 	   ctermbg=DarkGrey
	" Unselected
	hi TabLine 	   ctermbg=Black
end
if has('gui_running')
    hi Normal          guifg=White guibg=grey15
    
    hi Boolean         guifg=#af5fff
	hi Character       guifg=#afaf87
	hi Number          guifg=#af5fff
	hi String          guifg=#ffd787
	hi Conditional     guifg=#d7005f               gui=bold
	hi Constant        guifg=#af5fff               gui=bold
	hi Cursor          guifg=#000000  guibg=#dadada
	hi Debug           guifg=#ffd7ff               gui=bold
	hi Define          guifg=#5fd7ff
	hi Delimiter       guifg=#626262

	hi DiffAdd                     guibg=#005f87
	hi DiffChange      guifg=#d7afaf guibg=#4e4e4e
	hi DiffDelete      guifg=#d70087 guibg=#5f005f
	hi DiffText                    guibg=#878787 gui=bold

	hi Directory       guifg=#87ff00               gui=bold
	hi Error           guifg=#ffafff guibg=Black
	hi ErrorMsg        guifg=#ff00af guibg=#000000    gui=bold
	hi Exception       guifg=#d70000               gui=bold
	hi Float           guifg=#af5fff
	hi FoldColumn      guifg=#5f87af  guibg=#000000
	hi Folded          guifg=#5f87af  guibg=#000000
	hi Function        guifg=#87ff00
	hi Identifier      guifg=#ff8700
	hi Ignore          guifg=#808080 guibg=#080808
	hi IncSearch       guifg=#d7ffaf guibg=#000000

	hi Keyword         guifg=#d7005f               gui=bold
	hi Label           guifg=#ffffaf               gui=none
	hi Macro           guifg=#d7ffaf
	hi SpecialKey      guifg=#5fd7ff

	hi MatchParen      guifg=#000000  guibg=#ff8700 gui=bold
	hi ModeMsg         guifg=#ffffaf
	hi MoreMsg         guifg=#ffffaf
	hi Operator        guifg=#d7005f

	hi Comment	   guifg=#9e9e9e
	hi ColorColumn	   guibg=#303030 guibg=black
	hi Pmenu           guifg=#5fd7ff  guibg=#000000
	hi PmenuSel                    guibg=#808080
	hi PmenuSbar                   guibg=#080808
	hi PmenuThumb      guifg=#5fd7ff

	hi PreCondit       guifg=#afffff	gui=bold
	hi PreProc         guifg=#afffff
	hi Question        guifg=#5fd7ff
	hi Repeat          guifg=#d7005f               gui=bold
	hi Search          guifg=#dadada guibg=#5f8787

	hi SignColumn      guifg=#87ff00 guibg=#808080
	hi SpecialChar     guifg=#d7005f               gui=bold
	hi SpecialComment  guifg=#8a8a8a               gui=bold
	hi Special         guifg=#5fd7ff  guibg=#080808
	hi SpecialKey      guifg=#8a8a8a

	hi Statement       guifg=#d7005f               gui=bold
	hi StatusLine      guifg=#444444 guibg=#dadada
	hi StatusLineNC    guifg=#808080 guibg=#080808
	hi StorageClass    guifg=#ff8700
	hi Structure       guifg=#5fd7ff
	hi Tag             guifg=#d7005f
	hi Title           guifg=#d75f00
	hi Todo            guifg=#ffffff guibg=#080808   gui=bold

	hi Typedef         guifg=#5fd7ff
	hi Type            guifg=#5fd7ff                gui=none
	hi Underlined      guifg=#808080               gui=underline

	hi VertSplit       guifg=#808080 guibg=#080808   gui=bold
	hi VisualNOS                   guibg=#444444
	hi Visual                      guibg=#808080
	hi WarningMsg      guifg=#ffffff guibg=#444444   gui=bold
	hi WildMenu        guifg=#5fd7ff  guibg=#000000

	hi CursorLine                  guibg=#1c1c1c   gui=none
	hi CursorColumn                guibg=#1c1c1c
	hi LineNr          guifg=#bcbcbc
	hi TabLineFill     guifg=Black guibg=Black
	hi TabLineSel 	   guibg=DarkGrey
	hi TabLine 	   guibg=Black   
end
