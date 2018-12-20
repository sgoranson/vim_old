set background=dark

let g:terminal_color_0  = '#282828'
let g:terminal_color_1  = '#cc241d'
let g:terminal_color_2  = '#98971a'
let g:terminal_color_3  = '#d79921'
let g:terminal_color_4  = '#458588'
let g:terminal_color_5  = '#b16286'
let g:terminal_color_6  = '#689d6a'
let g:terminal_color_7  = '#a89984'
let g:terminal_color_8  = '#928374'
let g:terminal_color_9  = '#fb4934'
let g:terminal_color_10 = '#b8bb26'
let g:terminal_color_11 = '#fabd2f'
let g:terminal_color_12 = '#83a598'
let g:terminal_color_13 = '#d3869b'
let g:terminal_color_14 = '#8ec07c'
let g:terminal_color_15 = '#ebdbb2'


let g:terminal_ansi_colors = [ '#282828', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2' ]

set termguicolors
" set nocursorline
"colorscheme spg-gruvbox
let g:gruvbox_contrast_dark = 'hard'
colorscheme one
let color_favs = [ 'spg-gruvbox', 'base16-atelier-forest', 'one', 'base16-onedark' ]

" hi! link SignColumn NONE{{{
" hi! SignColumn     guifg=#00ff00}}}


" exec "hi! SignColumn guifg=" . g:terminal_color_10
hi! Search     guibg=#1f9377 guifg=#000000
hi! Visual guibg=#464467
hi! CursorLine guibg=#000000
hi! ColorColumn guibg=#000000
hi! LineNr         guifg=#545862 guibg=#353b45
hi! Normal guibg=NONE
" hi! Folded         guifg=#282c34 guibg=#282828
hi! Folded guifg=#5c6370 guibg=#2c323c
"if ! has('nvim')
"    set termguicolors
"    " set nocursorline
"    "colorscheme spg-gruvbox
"    let g:gruvbox_contrast_dark = 'hard'
"    colorscheme spg-gruvbox

"    hi! link StatMode1 StatNormal1

"    hi! StatNormal1  ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
"    hi! StatInsert1  ctermfg=235 ctermbg=109 guifg=#282828 guibg=#83a598
"    hi! StatDark1  ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
"    hi! StatDark2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
"    hi! StatDark3  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
"    hi! StatDark4  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
"    hi! StatDark5  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64

"elseif $MYOS ==# "WSL" || $TERM ==# "" || $TERM ==# "linux"
"    "let g:gruvbox_contrast_dark = 'hard'
"    "let g:gruvbox_termcolors = 16
"    " set termguicolors
"    set nocursorline
"    set nocursorcolumn
"    " set colorcolumn=""
"    " set signcolumn=no
"    " set foldcolumn=0
"    " let g:ale_sign_column_always=0
"    " let g:signify_disable_by_default=1
"    " colorscheme gruvbox
"    colorscheme default


"    " hi! Folded       ctermfg=0 ctermbg=237 guifg=#000000 guibg=#3c3836
"    " hi! CursorLine       ctermfg=0 ctermbg=237 guifg=#000000 guibg=#3c3836

"elseif $TERM ==# "dos"
"    set nocursorline

"" cursorlines are fucking brutal for some reason. RPi can't handle it
"elseif system("uname -m") =~? 'arm'
"    set termguicolors
"    set nocursorline
"    colorscheme spg-gruvbox

"else " standard linux nvim
"    set termguicolors
"    " set nocursorline
"    "colorscheme spg-gruvbox
"    let g:gruvbox_contrast_dark = 'hard'
"    colorscheme base16-onedark
"    let color_favs = [ 'spg-gruvbox', 'base16-atelier-forest', 'one', 'base16-onedark' ]

"    hi! link SignColumn NONE
"    exec "hi! SignColumn guifg=" . g:terminal_color_10
"     hi! Search     ctermfg=208 ctermbg=235 guibg=#6CE0C4 guifg=#000000
"     hi! Visual guibg=#464467
"     hi! CursorLine guibg=#000000
"     hi! ColorColumn guibg=#000000

"    hi Normal guibg=NONE ctermbg=NONE
"    " hi! TabLine         cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey



"" hi! gitcommitDiscardedType ctermfg=4 guifg=#83a598

"    " hi! Search     cterm=reverse ctermfg=208 ctermbg=235 gui=reverse guifg=#379F39 guibg=#272828


"    " hi! TabLineFill     ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 cterm=NONE gui=NONE
"    " hi! TabLine  cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
"    " hi! link TabLine  TabLineFill
"    " hi! TabLineSel      ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836


"    " hi! link StatMode1 StatNormal1

"    " hi! StatNormal1  ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
"    " hi! StatInsert1  ctermfg=235 ctermbg=109 guifg=#282828 guibg=#83a598
"    " hi! StatDark1  ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
"    " hi! StatDark2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
"    " hi! StatDark3  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
"    " hi! StatDark4  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
"    " hi! StatDark5  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
"endif
