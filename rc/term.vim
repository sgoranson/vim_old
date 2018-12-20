if 0
    if !has('nvim')
        if &term =="tmux-256color"
            set t_kb=
            set t_kD=[3~
            " 	set t_F2=[24~
        endif

        if &term =~ "xterm\\|rxvt"
            " wsl-bridge win32
            "map OS <C-W>
            "set <C-H>=OD
            "set <C-J>=[1;5D
            "set <C-K>=[1;5C
            "set <C-L>=OC
            "set <xF4>=

            "  map OS <C-W>
            "set <C-H>=OD
            "set <C-J>=[1;5D
            "set <C-K>=[1;5C
            "set <C-L>=OC
            "set <xF4>=
        endif
    else
    endif
endif

" color term hack
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"let t_Co=256

"if !has('gui_running')
"set t_Co=256
"endif


"cf # function
"cl # line
"ci # indent
"ca # argument
"c% # matchits

" ]}   # next UNMATCHED brace
" ]m   # start of method
" =p   # unimpaired paste and reindent
" yo   # unimpaired paste toggle + insert
" ga   # go align
" cgn  # visual select next search item
"

" last insert jump
" '.
" changelist
" g; g,
" zj zk
" navigate folds
" zM zR
" close/open all folds
" lets you paste from insert mode
" CTRL-R "
" switch windows
" C-W w
" close windows
" C-W w
" windows same width
" C-w =
" toggle comments Nerdcommenter
" <Leader>c<Space>
" keybindings builtin
" :h index
" follow help link
" C-]
" cycle through jump list
" C-O C-I
" f search use ;' to cycle
" debug printfs
" echom 'hihihi'
" :messages
" last change or yank
" '[ ']
" last jump
" ''
"
" paste last yank
" "0P
