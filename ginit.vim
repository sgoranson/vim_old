" hi! clear Cursor
" hi! link Cursor GruvboxRedSign
" hi Cursor term=reverse gui=reverse
"execute(":Guifont InconsolataForPowerline Nerd Font:h11")
" hi! Cursor term=NONE gui=NONE guifg=#d33682 guibg=#FF91EC
" hi! link lCursor Cursor
if has("win32")
    GuiFont Consolas:h12
else
    GuiFont Consolas for Powerline:style=Regular:h18
endif



" ugg. c-h, \x08, BS: FUCK. YOU.
map  <Left>  <Plug>(easymotion-bl)

set cursorline
colorscheme spg-gruvbox
