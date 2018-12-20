"                                          ,,
"                                          db
"
"   MMpMMMb.  .gP"Ya   ,pW"Wq.`7M'   `MF'`7MM  `7MMpMMMb.pMMMb.
"   MM    MM ,M'   Yb 6W'   `Wb VA   ,V    MM    MM    MM    MM
"   MM    MM 8M"""""" 8M     M8  VA ,V     MM    MM    MM    MM
"   MM    MM YM.    , YA.   ,A9   VVV      MM    MM    MM    MM
"  JMML  JMML.`Mbmmd'  `Ybmd9'     W     .JMML..JMML  JMML  JMML.
"

set runtimepath&

let g:dbgx = 0

if(g:dbgx)
    echom "msys: " . has("win32unix")
    echom "msys64: " . has("win64unix")
    echom "win: " . has("win32")
    echom "C: " . isdirectory('C:\usr')
    echom "env mmsys: " . !empty($IS_MSYS)
endif

let g:os = 'unknown'
if (has('win16') || has('win32') || has('win64')) && !has("win32unix")
    let g:os = 'win'
elseif (has('win32unix'))
    let g:os = 'cygwin'
elseif (has('unix') || has('macunix'))
    let g:os = 'unix'
endif

if (g:os ==# 'win')
    let g:Psep = ';'
    let g:Fsep = '\'
else
    let g:Psep = ':'
    let g:Fsep = '/'
endif

"let g:python_host_prog  = 'python'
let g:python3_host_prog = 'python3'

let g:cache_home =  exists('$XDG_CACHE_HOME') ? '$XDG_CACHE_HOME' : '$HOME/.cache'
let g:config_home =  exists('$XDG_CONFIG_HOME') ? '$XDG_CONFIG_HOME' : '$HOME/.config'

"""" DIRECTORIES

if has('nvim')
    let g:vim_home_dir = g:config_home . '/nvim/'
    let g:plugin_dir = g:cache_home . '/nvim/nvimplugs/'
    let g:backup_dir = g:cache_home . '/nvim/backup/'
    let g:vim_snips_dir = g:vim_home_dir . '/snippets/'
else
    if has('win16') || has('win32') || has('win64')
        let g:vim_home_dir = '$HOME/vimfiles/'
    else
        let g:vim_home_dir = '$HOME/.vim/'
    endif

    let g:vim_home_dir = '$HOME' . '/.vim/'
    let g:backup_dir = g:cache_home . '/vim/backup/'
    let g:plugin_dir = g:cache_home . '/vim/vimplugs/'
    let g:vim_snips_dir = g:vim_home_dir . '/snippets/'
endif

let g:autoload_dir = g:vim_home_dir . 'autoload/'
let g:rc_dir = g:vim_home_dir . 'rc/'

if(g:dbgx)
    set shell?
    set shellcmdflag?
    echom "plugin1: " . g:plugin_dir
endif

let g:vim_home_dir = fnameescape(expand(g:vim_home_dir))
let g:plugin_dir   = fnameescape(expand(g:plugin_dir))
let g:backup_dir   = fnameescape(expand(g:backup_dir))
let g:rc_dir       = fnameescape(expand(g:rc_dir))
let g:autoload_dir = fnameescape(expand(g:autoload_dir))

if(g:dbgx)
    echom "plugin2: " . fnameescape(g:plugin_dir)
endif

if !isdirectory(g:plugin_dir)
    call mkdir(g:plugin_dir, 'p')
endif

if !isdirectory(g:autoload_dir)
    call mkdir(g:autoload_dir, 'p')
endif

if !isdirectory(g:backup_dir)
    call mkdir(g:backup_dir, 'p')
endif

let $NVIM_PYTHON_LOG_FILE = g:backup_dir . "/nvimpython.log"


if has('nvim')
    set shada=!,'300,<50,s10,h
else
    set viminfo=!,'10,\"100,:20,n$HOME/.cache/.viminfo
endif

"let g:scratch = '$HOME' . g:Fsep .  'Dropbox' . g:Fsep . 'scratch.md'
"let g:scratch = expand(g:scratch)
let g:scratch = '~/Dropbox/scratch.md'


exec 'source ' . g:rc_dir . 'options.vim'
"exec 'source ' . g:rc_dir . 'plugins.vim'
exec 'source ' . g:rc_dir .  'functions.vim'
exec 'source ' . g:rc_dir . 'keys.vim'
exec 'source ' . g:rc_dir .  'color.vim'
scriptencoding utf-8

" Gui {{{

set mouse=a
set clipboard=
set cursorline                         " highlight current line
set colorcolumn=102                    " try not to code paste here
set foldcolumn=3                       " pretty column display folds
set synmaxcol=200
syn sync minlines=256
syn sync maxlines=500
set conceallevel=0                    " plz dont hide stuff

set foldenable                        " fold by default
" set foldlevelstart=99                 " 0 is start folded
" set foldlevel=99                      " 0 is start folded
set foldmethod=marker                 " default marker folding
"set foldnestmax=20                   " deepest fold is 3 levels

set noruler
set nolazyredraw                        " supposedly speeds things up
set number                            " Line numbers are good
set showcmd                           " Show incomplete cmds down the bottom
set showmode                          " Show current mode down the bottom
set noshowmatch                         " matching parens highlight
set title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"             \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"             \,sm:block-blinkwait175-blinkoff150-blinkon175
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:Cursor/Cursor
set hlsearch                        " Highlight searches off by default
set incsearch                         " Find the next match as we type the search
set linebreak                         " Wrap lines at convenient points
set laststatus=2                      " always show statusline
set list                              " enable showing the chars above
set guioptions=egrLtmc
set showtabline=1
let &showbreak = '+++ '

if ! has('win32')
    "set listchars=tab:→\ ,eol:↲,nbsp:␣,extends:⟩,precedes:⟨
    set listchars=tab:→\ ,nbsp:␣,extends:⟩,precedes:⟨
else
    set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
endif

set mousefocus
set mousemodel=popup
set scrolloff=2                       " Start scrolling when we're 8 lines away from margins
set sidescrolloff=2
set sidescroll=1
set signcolumn=yes
set nowrap                            " Don't wrap lines

set t_vb=                             " disable the fk'ing bell
set novisualbell                      " No sounds
set noerrorbells                      " third time's the charm
set belloff=all                       " fourth try?


" # }}}

" Statusline {{{
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '' : printf(
    \   '%dW %dE',
    \   l:all_non_errors,
    \   l:all_errors
    \)
endfunction


let g:sg_mode_map = {
      \     'n': 'NORMAL', 'i': 'INSERT', 'R': 'REPLACE', 'v': 'VISUAL', 'V': 'V-LINE',
      \      "\<C-v>": 'V-BLOCK', 'c': 'COMMAND', 's': 'SELECT', 'S': 'S-LINE', "\<C-s>": 'S-BLOCK',
      \      't': 'TERMINAL'
      \   }

let g:active_statusline='%#StatMode1#'
let g:active_statusline.="%( %{get(g:sg_mode_map, mode(),'')} %)"  " insert/normal/visual
" let g:active_statusline.='%#warningmsg#'
" let g:active_statusline.='%{LinterStatus()}'
let g:active_statusline.='%#StatDark1#'
let g:active_statusline.='%{(&paste)||(&readonly)?"|":""}'         " paste toggle
let g:active_statusline.='%(%{&paste?"PASTE":""}%)'
let g:active_statusline.='%{(&paste)&&((&readonly))?"|":""}'
let g:active_statusline.='%( %R %)'                                " readonly
let g:active_statusline.='%( %h %q %)'                             " help flag
let g:active_statusline.='%( %f %)'                                " relative path
let g:active_statusline.='%{(&modified||!&modifiable)?"|":""}'
let g:active_statusline.='%( %M %)'                                " modified
let g:active_statusline.='%#StatDark2#'
"let g:active_statusline.='%(%{g:ale_enabled?" Lint |":""}%)'
let g:active_statusline.=' %(%2p%% %)'                             " percent scrolled
let g:active_statusline.='%='
let g:active_statusline.=' %(%{&ff}%) |'                           " file format (line ending style)
let g:active_statusline.="%( %{&fenc!=#''?&fenc:&enc}%) |"         " file encoding
let g:active_statusline.="%( %{&ft!=#''?&ft:'no ft'} %)"           " file type
let g:active_statusline.='%#StatDark4#'
let g:active_statusline.=' [%3b][0x%2B]'                          " [dec][hex] curByte
let g:active_statusline.='%#StatDark5#'
let g:active_statusline.='%( %-2v/%l/%L %)'               " curLine/maxLine : colNum

let g:inactive_statusline = '%#StatDark2#'
let g:inactive_statusline.="%( %{get(g:sg_mode_map, mode(),'')} %)"
let g:inactive_statusline.='%{(&paste)||(&readonly)?"|":""}'
let g:inactive_statusline.='%(%{&paste?"PASTE":""}%)'
let g:inactive_statusline.='%{(&paste)&&((&readonly))?"|":""}'
let g:inactive_statusline.='%( %R %)'
let g:inactive_statusline.='%( %h %q %)'
let g:inactive_statusline.='%( %f %)'
let g:inactive_statusline.='%{(&modified||!&modifiable)?"|":""}'
let g:inactive_statusline.='%( %M %)'
"let g:inactive_statusline.='%(%{g:ale_enabled?" Lint |":""}%)'
let g:inactive_statusline.=' %(%2p%% %)'

let &statusline = g:active_statusline

" # }}}

" Etc {{{
set shellcmdflag&
set shell&
set shellxquote&
set formatoptions=jql
" set gdefault&                         " s///g implied
set noautoread                        " dont silently reload files changed outside vim
set backspace=indent,eol,start        " Allow backspace in insert mode
set complete=.,w,b,u,t
set completeopt=longest,menuone
set expandtab
set fileencoding=utf-8                " The encoding written to file.

set viewoptions-=options              " when we save a view dont save options
set hidden                            " buffers can exist sans window
set history=10000                     " Store lots of :cmdline history
set ignorecase                        " Ignore case when searching...
set smartcase                         " ...unless we type a capital
set iskeyword+=_,$,@,%,-

set backup
set directory-=.                      " plz stop leaving swp files errywhere
let &backupdir=g:backup_dir
let &undodir=g:backup_dir
set nopaste
set nostartofline                     " scroll w/ switching to sol
set swapfile
set nocindent
set autoindent
set smartindent
set writebackup
set smarttab
set softtabstop=4
set tabstop=4
set undofile
set shiftwidth=4
set timeoutlen=1000 ttimeoutlen=100
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*DS_Store*
set wildignore+=*sass-cache*
set wildignore+=*vim/backups*
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/rails/**
set wildignore=*.o,*.obj,*~           "stuff to ignore when tab completing
set nowildignorecase
set wildmenu                          "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest            " shows a list
"set wildmode=longest:full             " shows a menu
" setglobal fileencoding=utf-8          " The encoding written to file.
" set fileformat=unix                     " attempt to always use <NL>
" set fileformats=unix

" Use ctrl-X-K/P to browse dictionary completions
set nospell
set spelllang=en_nz
set spellfile=~/.vim/douglas.add,~/.vim/code.add
set spellsuggest=9

if $VIM_CRONTAB ==? 'true'
    set nobackup
    set nowritebackup
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" various syntax/highlight tweaks
let g:loaded_matchparen=1
let g:parenmatch=1
let g:ale_enabled=0

let g:sh_noisk=1  " tinker with iskeyword
"let g:sh_fold_enabled=5
let g:xml_syntax_folding=1
let g:markdown_folding = 1

" set shellcmdflag=
" set shell=C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe\ -noprofile\ -command
" set shellxquote="\""

" # }}}
"" INIT  {{{1
"set encoding=utf-8
"scriptencoding utf-8

"function! PlugOnLoad(name, exec)
"    if !has_key(g:plugs, a:name)
"        return
"    endif
"    if has_key(g:plugs[a:name], 'on') || has_key(g:plugs[a:name], 'for')
"        execute 'autocmd! User' a:name a:exec
"    else
"        execute 'autocmd VimEnter *' a:exec
"    endif
"endfunction

"" auto-install vim-plug
"if empty(glob(g:vim_home_dir . g:Fsep . 'autoload' . g:Fsep . 'plug.vim'))
"    !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"endif

"call plug#begin(g:plugin_dir)

"" }}}

"" TPOPE {{{
"Plug 'chrisbra/vim-zsh'                          " :Delete, :Rename, :SudoWrite

"Plug 'tpope/vim-eunuch'                          " :Delete, :Rename, :SudoWrite
"Plug 'tpope/vim-unimpaired'                      " yo, ]b, etc
"Plug 'tpope/vim-commentary'                      " gcc, gcW, g/TODO/Commentary
"Plug 'tpope/vim-fugitive'                        " git helper
"Plug 'tpope/vim-repeat'                          " dot repeat for plugins

"function! StartUnimpaired()
"    silent!  nunmap [e
"    silent!  nunmap ]e
"endfunction

"call PlugOnLoad('vim-unimpaired', 'call StartUnimpaired()')

"Plug 'tpope/vim-surround'                        " ysw', cst<p>, vS'
"" undo any <C-g> or else it will be slllowwwww
"silent! iunmap <C-g>s
"silent! iunmap <C-g>S


"" }}}

"" NEW NORMAL COMMANDS  {{{1
"Plug 'vim-scripts/ReplaceWithRegister'            " provides gr wont autocopy v selection on paste

"Plug 'guyzmo/EnhancedJumps'
"Plug 'inkarkat/vim-ingo-library'
"let g:EnhancedJumps_CaptureJumpMessages = 0
"let g:stopFirstAndNotifyTimeoutLen = 2000

"function! StartEnhancedJumps()
"    silent!  nunmap <C-o>
"    silent!  nunmap <C-i>
"    nmap <C-o>   <Plug>EnhancedJumpsLocalOlder
"    nmap <C-i>   <Plug>EnhancedJumpsLocalNewer
"endfunction

"call PlugOnLoad('vim-unimpaired', 'call StartEnhancedJumps()')

"Plug 'easymotion/vim-easymotion'
"let g:EasyMotion_keys = 'asdfghjkl;qwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'
"let g:Easymotion_do_mapping = 0
"let g:EasyMotion_smartcase = 1

"Plug 'bronson/vim-visual-star-search'            " viw * will search

"Plug 'junegunn/vim-easy-align'                   " ga =
"Plug 'vim-scripts/UnconditionalPaste'            " force blockwise/linewise pasting...gcp
"function! StartUnconditional()
"    silent!  nunmap gpp
"    silent!  nunmap gpP
"endfunction
"call PlugOnLoad('UnconditionalPaste', 'call StartUnconditional()')
"" }}}

"" NEW EX COMMANDS {{{1
"" Plug 'vim-scripts/YankRing.vim'                             " yank history
"" let g:yankring_history_dir = '$XDG_CACHE_HOME'
"" let g:yankring_window_height = 20

"Plug 'sjl/gundo.vim'                                      " :GundoToggle
"Plug 'dhruvasagar/vim-table-mode'                         " :Tableize
"Plug 'brooth/far.vim', { 'do': ':UpdateRemotePlugins' }   " :Far foo bar **/*.py<CR>

"Plug 'Chiel92/vim-autoformat'              " :Autoformat (astyle, yapf, etc)

"if !exists('g:formatdef_astyle_ps1')
"    if filereadable('.astylerc')
"        let g:formatdef_astyle_ps1 = '"astyle --mode=c --options=.astylerc"'
"    elseif filereadable(expand('~/.astylerc')) || exists('$ARTISTIC_STYLE_OPTIONS')
"        let g:formatdef_astyle_ps1 = '"astyle --mode=c"'
"    else
"        let g:formatdef_astyle_ps1 = '"astyle --mode=c --style=ansi --indent-namespaces -pcH".(&expandtab ? "s".shiftwidth() : "t")'
"    endif
"endif

"let g:formatters_ps1 = ['astyle_ps1']

"Plug 'rizzatti/dash.vim'                         " :Dash TERM KEYWORD
"Plug 'vim-scripts/BufOnly.vim'                   " close all bufs but this one

"Plug 'Ron89/thesaurus_query.vim'

"let g:tq_language=['en']
"let g:tq_enabled_backends=['thesaurus_com', 'openoffice_en']

"" }}}

"" TEXT OBJECTS {{{1
"Plug 'haya14busa/vim-textobj-function-syntax'  " req lib
"Plug 'kana/vim-textobj-user'                   " req lib (diy objs)
"" [[plugins]]
"" Plug 'wellle/targets.vim'                    " a textobj
"Plug 'kana/vim-textobj-indent'                 " i textobj
"Plug 'kana/vim-textobj-function'               " f textobj
"Plug 'kana/vim-textobj-line'                   " l textobj
"Plug 'beloglazov/vim-textobj-quotes'           " q textobj
"Plug 'kana/vim-textobj-help'
""Plug 'nelstrom/vim-textobj-rubyblock'          " r textobj
"Plug 'rhysd/vim-textobj-anyblock'               " b textobj (parens, quotes, brackets, <)

"" }}}

"" DENITE {{{1

"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

"function! StartDenite()
"    exec 'source ' . g:rc_dir . 'plugins/denite.rc.vim'
"endfunction

"call PlugOnLoad('denite.nvim', 'call StartDenite()')

"Plug 'Shougo/unite.vim'
"Plug 'tacroe/unite-mark'
"let g:unite_source_mark_marks =
"            \   'abcdefghijklmnopqrstuvwxyz'
"            \ . 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
"Plug 'Shougo/neomru.vim'
"Plug 'Shougo/neoyank.vim'
""Plug '~/dev/neoyank.vim'
"let g:neoyank#disable_write = 1

"" let g:neoyank#file = expand('$XDG_CACHE_HOME/neoyank.yanks')
"" let g:neoyank#save_registers = [ '"' ]
"" let g:neoyank#limit = 10

"Plug 'neoclide/denite-git'
"Plug 'neoclide/vim-easygit'
"Plug 'Shougo/unite-outline'

"" }}}

"" COMPLETION / DEOPLETE  {{{1
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"let g:deoplete#enable_at_startup = 1

"function! StartDeoplete() " {{{2
"    let g:deoplete#enable_at_startup = 1

"    " Use auto delimiter
"    " call deoplete#custom#source('_', 'converters',
"    "       \ ['converter_auto_paren',
"    "       \  'converter_auto_delimiter', 'remove_overlap'])

"    " call deoplete#custom#source('_', 'converters', [
"    "       \ 'converter_remove_paren',
"    "       \ 'converter_remove_overlap',
"    "       \ 'converter_truncate_abbr',
"    "       \ 'converter_truncate_menu',
"    "       \ 'converter_auto_delimiter',
"    "       \ ])

"    " show snips first
"    call deoplete#custom#source('neosnippet', 'rank', 1000)
"    " ditch fuzzy mwatching
"    call deoplete#custom#source('_', 'matchers', ['matcher_head'])

"    " call deoplete#custom#source('buffer', 'min_pattern_length', 9999)
"    call deoplete#custom#source('clang', 'input_pattern', '\.\w*|\.->\w*|\w+::\w*')
"    call deoplete#custom#source('clang', 'max_pattern_length', -1)

"    let g:deoplete#keyword_patterns = {}
"    let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
"    let g:deoplete#keyword_patterns.tex = '[^\w|\s][a-zA-Z_]\w*'

"    let g:deoplete#omni#input_patterns = {}
"    let g:deoplete#omni#input_patterns.python = ''
"    let g:deoplete#omni#functions = {}

"    " inoremap <silent><expr> <C-t> deoplete#manual_complete('file')

"    "let g:deoplete#enable_refresh_always = 0
"    let g:deoplete#enable_camel_case = 1
"    " let g:deoplete#auto_complete_delay = 50
"    " let g:deoplete#auto_complete_start_length = 3

"endfunction " }}}

"call PlugOnLoad('deoplete.nvim', 'call StartDeoplete()')

"Plug 'zchee/deoplete-jedi'

"Plug 'zchee/deoplete-zsh'

"Plug 'zchee/deoplete-go'


"Plug 'Shougo/neco-vim'                  " vimscript completion
"Plug 'Shougo/neco-syntax'
"Plug 'Shougo/neopairs.vim'
""Plug 'Shougo/neoinclude.vim'            " smarter completion
"Plug 'fishbullet/deoplete-ruby'
"Plug 'Shougo/deoplete-rct'              " ruby rcodetools

"Plug 'davidhalter/jedi'                 " used in paralell for GotoDefinition
"let g:jedi#show_call_signatures = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#goto_assignments_command = ''  " dynamically done for ft=python.
"let g:jedi#goto_definitions_command = ''  " dynamically done for ft=python.
"let g:jedi#use_tabs_not_buffers = 0  " current default is 1.
"let g:jedi#rename_command = '<Leader>gR'
"let g:jedi#usages_command = '<Leader>gu'
"let g:jedi#completions_enabled = 0
"let g:jedi#smart_auto_mappings = 1

"" Unite/ref and pydoc are more useful.
"let g:jedi#documentation_command = '<Leader>_K'
"let g:jedi#auto_close_doc = 1


"" Plug 'vim-scripts/ingo-library'
"" Plug 'xolox/vim-misc'

"" }}}

"" SNIPPETS {{{1
"" Track the engine.
"Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'Shougo/context_filetype.vim'

"let g:neosnippet#snippets_directory=g:vim_snips_dir
"let g:neosnippet#enable_auto_clear_markers=0
"" }}}

"" LINT {{{
"Plug 'w0rp/ale'                            " great linter

"let g:ale_enabled = 1
"let g:ale_sign_column_always = 1
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_lint_on_save = 1
""let g:ale_sh_shell_default_shell = 'sh'

"let g:ale_linters = {
"            \   'zsh': ['shellcheck'],
"            \}

"nmap <silent> [e <Plug>(ale_previous_wrap)
"nmap <silent> ]e <Plug>(ale_next_wrap)

"call plug#end()

"let &runtimepath.=',' . g:vim_home_dir

"" }}}

"" FILESYSTEM  {{{1
"Plug 'airblade/vim-rooter'                            " change to project root automatic
"Plug 'Shougo/vimfiler.vim'

"function! StartVimfiler()
"    call vimfiler#custom#profile('default', 'context', {
"                \ 'safe' : 0,
"                \ 'auto_expand' : 1,
"                \ 'parent' : 0,
"                \ })

"    let g:vimfiler_as_default_explorer = 1
"    " Like Textmate icons.
"    let g:vimfiler_tree_leaf_icon = ' '
"    let g:vimfiler_tree_opened_icon = '▾'
"    let g:vimfiler_tree_closed_icon = '▸'
"    let g:vimfiler_file_icon = ' '
"    let g:vimfiler_readonly_file_icon = '✗'
"    let g:vimfiler_marked_file_icon = '✓'

"    autocmd FileType vimfiler call s:vimfiler_my_settings()
"    function! s:vimfiler_my_settings() abort
"        nmap <buffer> <Tab> <Plug>(vimfiler_switch_to_other_window)
"    endfunction
"endfunction

"call PlugOnLoad('vimfiler.vim', 'call StartVimfiler()')

"nnoremap <silent> <Space>v   :<C-u>VimFiler -auto-cd -toggle<CR>
"" }}}

"" FILETYPES  {{{1

"Plug 'alexgenco/neovim-ruby'
"Plug 'pboettch/vim-cmake-syntax'
"Plug 'powerman/vim-plugin-AnsiEsc'
"Plug 'mattn/emmet-vim'                         " html quicktyper <C-y>,
"let g:user_emmet_leader_key = '<C-w>'

"Plug 'godlygeek/tabular'
"" Plug 'tpope/vim-markdown'
"" Plug 'nelstrom/vim-markdown-folding'
"" Plug 'plasticboy/vim-markdown'
"" let g:vim_markdown_new_list_item_indent = 0
"" let g:vim_markdown_folding_style_pythonic = 1
"" let g:vim_markdown_folding_disabled = 0
"" let g:vim_markdown_folding_level = 1


"" Plug 'jaxbot/browserlink.vim'             " live html refresh

"" Plug 'jamessan/vim-gnupg'                 " handy gpg encryption


"Plug 'darfink/vim-plist'                         " osx plist
"let g:plist_save_format = 'binary'
"let g:plist_display_format = 'xml'

"Plug 'alx741/vinfo'                              " cause fuck emacs info pages

"Plug 'pangloss/vim-javascript'                   " snips

"Plug 'PProvost/vim-ps1'                          " powershell

"Plug 'cespare/vim-toml'                          " toml

"Plug 'syngan/vim-vimlint'
"Plug 'ynkdir/vim-vimlparser'
"" [[plugins]]
"" Plug 'python-mode/python-mode'                 " ]m, ]c
"" hook_add = '''
""     let g:pymode_python = 'python3'
""     let g:pymode_rope_autoimport_import_after_complete = 1
""     let g:pymode_rope_autoimport = 1
""     let g:pymode_rope_completion_bind = '<C-Space>'
""     let g:pymode_rope_complete_on_dot = 1
""     let g:pymode_rope_completion = 1
"" '''
""
"" }}}

"" COLOR {{{1
"Plug 'chriskempson/base16-vim'
"Plug 'guns/xterm-color-table.vim'
"Plug 'jaywilliams/vim-vwilight'
"Plug 'rakr/vim-one'
"Plug 'morhetz/gruvbox'
"Plug 'shinchu/lightline-gruvbox.vim'
"Plug 'lifepillar/vim-solarized8'
"Plug 'altercation/vim-colors-solarized'
"Plug 'KabbAmine/vCoolor.vim'
"Plug 'vim-scripts/SyntaxAttr.vim'
"" }}}

"" GUI  {{{1
"Plug 'equalsraf/neovim-gui-shim'           " nvim gui requirement
""Plug 'Konfekt/FastFold'                    " speeds up folding
"Plug 'powerman/vim-plugin-AnsiEsc'           " gets rid of ^H shit

"" if has('nvim')
""     Plug 'blueyed/vim-diminactive'              " change color of inactive window
""     let g:diminactive_use_syntax = 0
"" endif

"Plug 'itchyny/vim-parenmatch'               " internal parenmatch highlights sux

"Plug 'kshenoy/vim-signature'                " shows marks, m/ shortcuts
"let g:SignatureMap = {
"            \ 'Leader'             :  'm',
"            \ 'PlaceNextMark'      :  'm,',
"            \ 'ToggleMarkAtLine'   :  'm.',
"            \ 'PurgeMarksAtLine'   :  'm-',
"            \ 'DeleteMark'         :  'dm',
"            \ 'PurgeMarks'         :  'm<Space>',
"            \ 'PurgeMarkers'       :  'm<BS>',
"            \ 'GotoNextLineAlpha'  :  '',
"            \ 'GotoPrevLineAlpha'  :  '',
"            \ 'GotoNextSpotAlpha'  :  '',
"            \ 'GotoPrevSpotAlpha'  :  '',
"            \ 'GotoNextLineByPos'  :  '',
"            \ 'GotoPrevLineByPos'  :  '',
"            \ 'GotoNextSpotByPos'  :  '',
"            \ 'GotoPrevSpotByPos'  :  '',
"            \ 'GotoNextMarker'     :  ']-',
"            \ 'GotoPrevMarker'     :  '[-',
"            \ 'GotoNextMarkerAny'  :  ']=',
"            \ 'GotoPrevMarkerAny'  :  '[=',
"            \ 'ListBufferMarks'    :  'm/',
"            \ 'ListBufferMarkers'  :  'm?'
"            \ }

"let g:SignatureMarkTextHL = "CursorLineNr"

"Plug 'airblade/vim-gitgutter'          " shows changed lines, ]c hunk jumps
"let g:gitgutter_max_signs = 10000
"let g:gitgutter_map_keys = 0
"let g:gitgutter_override_sign_column_highlight = 0

"call plug#end()

filetype plugin indent on


" vim:foldmethod=marker:
" ########### autocmds ########### {{{
augroup spgFormat
    autocmd!
    "autocmd TextYankPost * echom 'spg: ' . join(v:event.regcontents, nr2char(0))
    " autocmd TextYankPost * echom 'spg: ' . getreg('"')
    " kill tabs
    let s:blacklist = ['make', 'neosnippet']
    autocmd BufWritePre * if index(s:blacklist, &ft) < 0 | :retab | endif

    " kill trailing whitespace
    let s:blacklisttrail = []
    autocmd BufWritePre * if index(s:blacklisttrail, &ft) < 0 | call StripTrailingWhite() | endif

    " disable comment continuations,
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END

augroup spgGUI
    autocmd!

    " auto detect filechanges
    autocmd FileChangedShell * echohl WarningMsg | echo "file changed outside vim!" | echohl None
    autocmd FocusGained * checktime
    autocmd WinEnter * checktime

    " Disable paste.
    autocmd InsertLeave * if &paste | setlocal nopaste | echo 'nopaste' | endif |
            \ if &l:diff | diffupdate | endif

    " restores the cursor to make xterm et al happy
    " autocmd VimLeave * set guicursor=a:hor50
    " autocmd VimLeave * hi Cursor guifg=#eeeeee guibg=#979AD4

    " pretty status color change
    autocmd WinLeave * call setwinvar(winnr(), "&statusline", g:inactive_statusline)
    autocmd WinEnter * call setwinvar(winnr(), "&statusline", g:active_statusline)
    autocmd InsertEnter * hi link StatMode1 StatInsert1
    autocmd InsertLeave * hi link StatMode1 StatNormal1
augroup END

augroup spgFiletypes
    autocmd!

    " Enable omni completion.
    autocmd FileType dosbatch setlocal commentstring=::\ %s
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType html,eruby,rb,css,js,xml runtime! macros/matchit.vim

    " autocmd FileType xml setlocal foldmethod=syntax foldlevelstart=99
    " autocmd FileType html setlocal foldmethod=syntax foldlevelstart=99

    autocmd BufNewFile,BufRead *.json set ft=javascript

    " persist folds
    autocmd BufWinLeave *? mkview 1
    autocmd BufWinEnter *? silent! loadview 1
augroup END
" # }}}

" ########### functions ########### {{{

function! SGToggleAle() abort
    if g:ale_enabled == 1
        echo "ale off"
        ALEDisable
    else
        echo "ale on"
        ALEEnable
    endif
endfunction

" http://vim.wikia.com/wiki/Increasing_or_decreasing_numbers
function! AddSubtract(char, back)
  let l:pattern = &nrformats =~? 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
  call search(l:pattern, 'cw' . a:back)
  execute 'normal! ' . v:count1 . a:char
  silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
endfunction

function! SGProfileStart() abort
    profile start $XDG_CACHE_HOME/profile-nvim.log
    profile func *
    profile file *
endfunction

function! SGProfileStop() abort
    profile stop
endfunction

function! StripTrailingWhite()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

" use Ag/Rg for grep if available
if executable('rg')
    set gp=rg\ --vimgrep\ --no-heading gfm=%f:%l:%c:%m,%f:%l%m,%f\ \ %l%m
endif

" http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines
function! DelEmptyLineBelow()
    if line(".") == line("$")
        return
    end
    let l:line = getline(line(".") + 1)
    if l:line =~ '^\s*$'
        let l:colsave = col(".")
        .+1d
        ''
        call cursor(line("."), l:colsave)
    end
endfunction

function! DelEmptyLineAbove()
    if line(".") == 1
        return
    end
    let l:line = getline(line(".") - 1)
    if l:line =~ '^\s*$'
        let l:colsave = col(".")
        .-1d
        silent normal! <C-y>
        call cursor(line("."), l:colsave)
    end
endfunction

function! s:getchar() abort
    redraw | echo 'Press any key: '
    let l:c = getchar()
    while l:c ==# "\<CursorHold>"
        redraw | echo 'Press any key: '
        let l:c = getchar()
    endwhile
    redraw | echomsg printf('Raw: "%s" | Char: "%s"', l:c, nr2char(l:c))
endfunction

function! s:SGExBuf(cmd)
    redir => message
    silent execute a:cmd
    redir END
    if empty(message)
        echoerr "no output"
    else
        enew
        silent put=message
    endif
endfunction

function! s:SGExGet(...)
    redir @"
    silent execute join(a:000)
    redir END
endfunction

function! s:SGFormatPosh()
    " let l:tmpx = g:cache_dir . g:Fsep . 'vimex.tmp'
    " echo "SPG: " l:tmpx
    " execute "mkexrc" l:tmpx
    !powershell -noprofile -command Edit-DTWBeautifyScript -indenttext '`t' -sourcepath %:p

    e %
    let s:linen = 1
    for s:linetxt in getline(1,'$')
        call setline(s:linen, substitute(s:linetxt, '\t', '    ', 'g'))
        let s:linen = s:linen + 1
    endfor
endfunction

function! s:SGSubWithCount()
    :%s///n
    let okx = confirm('ok?', "&ok\n&no",1)
    if okx == 1
        " :%s///
        exec "normal \<F6>"
    endif
endfunction

function! SGHighlightToHTML(outfile)
    let result = []
    for red in range(0, 255, 16)
        for green in range(0, 255, 16)
            for blue in range(0, 255, 16)
                let kw = printf('%-13s', printf('c_%d_%d_%d', red, green, blue))
                let fg = printf('#%02x%02x%02x', red, green, blue)
                let bg = '#000000'
                let h = printf('hi %s guibg=%s guifg=%s', kw, fg, bg)
                let s = printf('syn keyword %s %s', kw, kw)
                call add(result, printf('%s | %s', h, s))
            endfor
        endfor
    endfor
    call writefile(result, a:outfile)
    execute 'edit '.a:outfile
    source %
    echohl WarningMsg | echo "run :TOhtml" | echohl None
endfunction

" # }}}

" ########### commands ########### {{{
command! -complete=dir -nargs=* Ctags :!ctags -R --totals --extra=+q --fields=+iaS --c++-kinds=+p <args>
command! -nargs=+ -complete=command SGExBuf call s:SGExBuf(<q-args>)
command! -nargs=+ -complete=command SGExGet call s:SGExGet(<q-args>)
command! -nargs=+ -complete=file -bar Rg sil! gr! <args>|cw|redr!|let @/="<args>"|set hls
command! -nargs=1 -complete=command SGSubWithCount call s:SGSubWithCount()
command! SGBufCloseNotMe BufOnly
command! SGFormatPosh call <SID>SGFormatPosh()
command! SGProfileStart call SGProfileStart()
command! SGProfileEnd call SGProfileEnd()
command! SGMessagesClear for n in range(200) | echom "" | endfor
command! SGGetChar call s:getchar()
command! SGUndoToggle GundoToggle
command! SGHlExport ExportColors "tmp.tmp"
command! SGHlHTML call SGHighlightToHTML('gvim-color-test.tmp')
command! SGHlPick VCoolor
" # }}}
scriptencoding utf-8

" NOTE: :help <prefix> will bring you to a list of buildins starting w prefix
"       also: :h insert-index | :h normal-index | :h visual-index h: objects

let g:mapleader = '\'
let g:maplocalleader = '\'

"  F keys (level 0) {{{1
"  Ergo comfort:    80% (bit of a reach)
"  Ergo speed:      100% (single keystroke)
"  Available slots: ~12 (use sparingly)
noremap  <F1> y
noremap  <F2> p
noremap! <F2> <C-R>"

noremap  <F3> "zy
noremap  <F4> "zp
noremap! <F4> <C-R>z

" # }}}

"  Ctrl + [A-Z] (Level 1) {{{1
"  Ergo comfort:    100% (never leaves home)
"  Ergo speed:      90% (single+mod keystroke)
"  Available slots: ~50 (use sparingly)
nmap <C-o>   <Plug>EnhancedJumpsLocalOlder zz
nmap <C-i>   <Plug>EnhancedJumpsLocalNewer zz
" <C-S-o>
nmap <F17>   <Plug>EnhancedJumpsRemoteOlder
" <C-S-i>
nmap <F16>   <Plug>EnhancedJumpsRemoteNewer
nmap <C-x>   :bd<CR>

" nmap <c-h> :exe 'normal ' . (virtcol('$')/2) . '|'

map  <C-h>  <Plug>(easymotion-bl)
map  <C-l>  <Plug>(easymotion-wl)

map <RightMouse> "+P

if has('macunix')
    map  <Down> <Plug>(easymotion-sol-j)
    map  <Up>   <Plug>(easymotion-sol-k)
else
    map  <C-j> <Plug>(easymotion-sol-j)
    map  <C-k> <Plug>(easymotion-sol-k)
endif

noremap <C-u> 2<C-u>
noremap <C-d> 2<C-d>

nnoremap <S-Insert> "+p
inoremap <S-Insert> <C-R>+

vnoremap s :s//g<Left><left>

nnoremap ( [(
nnoremap ) ])
" <C-9>
nnoremap <F18>  ?{<CR>:nohlsearch<CR>
" <C-0>
nnoremap <F19>  /{<CR>:nohlsearch<CR>
" <C-S-9>
nnoremap <F20>  ?{<CR>:nohlsearch<CR>
" <C-S-0>
nnoremap <F21>  /{<CR>:nohlsearch<CR>

" easy macro usage
vnoremap <C-q>     :'<,'>g/^/ norm @q<CR>
nnoremap <C-q>     @q

nnoremap <silent> #         <C-^>
nnoremap <silent> <S-space> i<Space><Esc>
nnoremap <silent> <Esc>     :<C-u>:nohlsearch<CR><Esc>
vnoremap <silent> <Space>   I<Space><Esc>gv
nnoremap <silent> <CR>      za

noremap  <silent> H  ^
noremap  <silent> L  $
nnoremap <silent> M  :normal <C-R>=(virtcol('$')/2)<CR>\|<CR>

nmap     <silent> Y  yiW
nmap     <silent> K  ciW
nmap     <silent> Q  cib
nmap     <silent> ^  viW
nmap     <silent> S  :w<CR>

inoremap <C-H> <Left>
inoremap <C-L> <Right>
inoremap <C-w> <C-g>u<C-w>
inoremap <C-u> <C-g>u<C-u>

" paste clipboard during insert
inoremap <silent>  <C-p>  <C-r>+<Esc>'[=']']

" textobjs for folds
onoremap if :<c-u>normal! [zv]z<cr>
onoremap af :<c-u>normal! [zV]z<cr>
vnoremap if :<c-u>normal! ]zv[z<cr>
vnoremap af :<c-u>normal! ]zV[z<cr>

" change this word, repeatable
nnoremap    cn *``cgn
nnoremap    cN *``cgN

"xnoremap s :s//g<Left><Left>
" }}}

"  gX Key (level 2) {{{
"  Ergo comfort:    80%
"  Ergo speed:      90% (g+single keystroke)
"  Available slots: ~10 (use sparingly, careful about builtins)

" align
nmap                    ga <Plug>(EasyAlign)
xmap                    ga <Plug>(EasyAlign)

nmap                    gcc  <Plug>CommentaryLine
map                     gc   <Plug>Commentary

" last change
nnoremap <silent>       gi   '.

" insert a blank line and paste
"noremap <silent>        gp    o<Esc>p'[=']']o<Esc>
" }}}

"  Alt Key (level 3) {{{
"  Ergo comfort:    70% (odd reach to alt)
"  Ergo speed:      90% (single+mod keystroke)
"  Available slots: ~50 (use sparingly. also, will likely require OS remap schenanigans)

" alt-s surround
nmap <M-s> ysiW
nmap <M-S> ysiw

" <M-d> welete inner worw
nnoremap <M-d> "zdiW
nnoremap <M-D> "zdiw

" <M-c>  change inner word
nnoremap <M-w> "zciW
nnoremap <M-W> "zciw

" <M-y>  yank inner word
nnoremap <M-y> yiW
nnoremap <M-Y> yiw

" alt-p align paste (normal)
nnoremap <M-p> p'[=']']o<Esc>
nnoremap <M-P> P'[=']']o<Esc>

" alt-p regular paste (insert)
inoremap <M-p> <C-R>"<Esc>
" alt-v regular paste (insert, normal, visual)
inoremap <M-v> <C-R>"<Esc>
noremap <M-v> p
noremap <M-V> P

" <M-a>/<M-x> inc/dec number
nnoremap <silent> <M-a> :<C-u>call AddSubtract("\<C-a>", '')<CR>
nnoremap <silent> <M-A> :<C-u>call AddSubtract("\<C-a>", 'b')<CR>
nnoremap <silent> <M-x> :<C-u>call AddSubtract("\<C-x>", '')<CR>
nnoremap <silent> <M-X> :<C-u>call AddSubtract("\<C-x>", 'b')<CR>

" # }}}

"  Brackets  {{{1
"  Ergo comfort:    70%
"  Ergo speed:      90% (bracket + key)
"  Available slots: ~30 (save for things that have pairs, e.g. up/down left/right)
nnoremap [t         :tabnext<CR>
nnoremap ]t         :tabprevious<CR>

" inserting blank lines
nmap [<space> <Plug>unimpairedBlankUp
nmap ]<space> <Plug>unimpairedBlankDown

" git change hunks
nmap [h <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk

" changelist
nnoremap [c g;
nnoremap ]c g,

" put locations
nnoremap [p '[
nnoremap ]p ']

" reselect recent paste
nnoremap gp `[v`]

" visual start/end
nnoremap [v '<
nnoremap ]v '>

" errors
nmap ]e <Plug>(ale_next_wrap)
nmap ]e <Plug>(ale_previous_wrap)

" # }}}

"  Leader (level 4) {{{1
"  Ergo comfort:    50% (must leave home for leader. unless space?)
"  Ergo speed:      60% (leader+{1,2} keystrokes)
"  Available slots: effectively unlimited

nnoremap <silent><leader>al  :call SGToggleAle()<CR>

" cd current dir of buffer
nnoremap <silent><leader>cd  :cd %:p:h<bar>:pwd<CR>
" cd root of git project
nnoremap <silent><leader>cg  :Gcd<CR>

nnoremap <silent><leader>cl  :set cursorline!<CR>

" clipboard delete
noremap  <silent><leader>d       "+d

nnoremap <silent><leader>ed  :e <C-R>=expand('%:h').'/'<cr>

" hi groups (from sjl)
nnoremap <silent><leader>hl  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <silent><leader>ll  :source $MYVIMRC<CR>

noremap  <silent><leader>ss      :exe ':e ' . g:scratch  <CR>

" clipboard yank
noremap  <silent><leader>y       "+y

" clipboard paste
noremap  <silent><leader>p       o<Esc>"+p'[=']']o<Esc>

nnoremap <silent><Leader>tq :ThesaurusQueryReplaceCurrentWord<CR>

" toggle all/none folds
nnoremap <silent><expr><leader>z  &foldlevel > 0 ? ':norm zMzz<CR>' : ':norm zRzz<CR>'

if &diff
    unmap [c
    unmap ]c
    map <leader>L :diffget LOCAL<CR>
    map <leader>B :diffget BASE<CR>
    map <leader>R :diffget REMOTE<CR>
endif


" # }}}

"  Tabs  {{{1
nnoremap <C-t>h  :tabnext<CR>
nnoremap <C-t>l  :tabprev<CR>
nnoremap <C-t>n  :tabedit<CR>
nnoremap <C-t>q  :tabclose<CR>
nnoremap <C-t>e  :tabedit<Space>
nnoremap <C-t>m  :tabm<Space>
" # }}}

"  Terminal  {{{1
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" # }}}

"  Ex Mode  {{{1
if ! has('win32')
    cmap <C-H> <Left>
endif

cmap <C-A> <Home>
cmap <C-E> <End>
cmap <C-J> <S-Left>
cmap <C-K> <S-Right>
cmap <C-L> <Right>
cmap <C-p> <Up>
cmap <C-n> <Down>
" # }}}

"  Denite  {{{1
nnoremap <silent> <Space>/  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine line<CR>
nnoremap <silent> <Space>a  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine tag:include<CR>
nnoremap <silent> <Space>b  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine buffer<CR>
nnoremap <silent> <Space>c  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine -reversed command_history<CR>
nnoremap <silent> <Space>j  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine jump<CR>
nnoremap <silent> <Space>gb :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine line:buffers<CR>
nnoremap <silent> <Space>h  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine -smartcase help<CR>
nnoremap <silent> <Space>l  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine line<CR>
nnoremap <silent> <Space>m  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine unite:mark<CR>
nnoremap <silent> <Space>o  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine outline<CR>
nnoremap <silent> <Space>e  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine file_mru<CR>
nnoremap <silent> <Space>r  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine file_mru/git<CR>
nnoremap <silent> <Space>t  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine unite:tab<CR>
nnoremap <silent> <Space>y  :<C-u>Denite  -mode=insert -default-action=append -highlight-mode-insert=CursorLine neoyank<CR>
"nnoremap <silent> <Space>k  :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine unite:mapping<CR>


nnoremap <silent> <Space>f :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine
                            \ `finddir('.git', ';') != '' ? 'file_rec/git' : 'file_rec'`<CR>

nnoremap <silent> <Space>gr :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine -auto-preview -buffer-name='grepit' -vertical-preview -resume<CR>
nnoremap <silent> <Space>gp :<C-u>Denite  -mode=insert -highlight-mode-insert=CursorLine -auto-preview -buffer-name='grepit' -vertical-preview -no-empty
                            \ `finddir('.git', ';') != '' ? 'grep/git' : 'grep'`<CR>

nnoremap <silent> <Space>* :<C-u>DeniteCursorWord  -mode=insert -highlight-mode-insert=CursorLine
                            \ `finddir('.git', ';') != '' ? 'grep/git' : 'grep'`<CR>
" # }}}

"  Completion  {{{1
inoremap <silent><expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr><TAB>    pumvisible() ? "\<C-n>" : <SID>check_back_space() ?
            \ "\<TAB>" : deoplete#manual_complete()

function! s:check_back_space() abort
  let l:col = col('.') - 1
  return !l:col || getline('.')[l:col - 1]  =~# '\s'
endfunction

" <C-h>, <BS>: close popup and delete backword char.
inoremap <silent><expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <silent><expr><BS>  deoplete#smart_close_popup()."\<C-h>"

inoremap <silent><expr><C-g>       deoplete#refresh()
inoremap <silent><expr><C-l>       deoplete#complete_common_string()

"imap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function() abort
""  return deoplete#cancel_popup() . "\<CR>"
"   if  pumvisible()
"       "return deoplete#close_popup()."\<C-y>"
"       return deoplete#close_popup()
"   else
"       return "\<CR>"
"   endif"
"endfunction
inoremap <silent><expr><CR> pumvisible() ? deoplete#close_popup() : "\<CR>"

" <C-j>, <C-k>"
imap <expr><Down>  pumvisible() ? "\<Tab>" : "\<Down>"
imap <expr><Up>  pumvisible() ? "\<S-Tab>" : "\<Up>"

imap <C-s>  <Plug>(neosnippet_expand_or_jump)
smap <C-s>  <Plug>(neosnippet_expand_or_jump)
xmap <C-s>  <Plug>(neosnippet_expand_target)
" # }}}

"  Plumbing  {{{1
" TODO I am depending on the OS to remap <C-j>/<C-k> to <Up>/<Down>.
" <C-j>/<C-k> are frequently unable to stop being LF/VF and that sucks.
"
" <S-space> == <F13>
map <F13> <S-Space>
map! <F13> <S-Space>
map ∑ <M-w>
map! ∑ <M-w>
map „ <M-W>
map! „ <M-W>
map ¥ <M-y>
map! ¥ <M-y>
map Á <M-Y>
map! Á <M-Y>
map ß <M-s>
map! ß <M-s>
map Í <M-S>
map! Í <M-S>
map π <M-p>
map! π <M-p>
map ∏ <M-P>
map! ∏ <M-P>
map ∂ <M-d>
map! ∂ <M-d>
map Î <M-D>
map! Î <M-D>
map å <M-a>
map! å <M-a>
map Å <M-A>
map! Å <M-A>
map ≈ <M-x>
map! ≈ <M-x>
map ˛ <M-X>
map! ˛ <M-X>
map ç <M-c>
map! ç <M-c>
map Ç <M-C>
map! Ç <M-C>
map! √ <M-v>
map √ <M-v>
map! ◊ <M-V>
map ◊ <M-V>
" # }}}

"  Ambient Tweaks  {{{1
noremap <ScrollWheelUp> 2<C-U>
noremap <S-ScrollWheelUp> 2<C-U>
noremap <ScrollWheelDown> 2<C-D>
noremap <S-ScrollWheelDown> 2<C-D>

" Smart <C-f>, <C-b>.
noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('w0') <= 1 ? "H" : "M")
" map <C-o> <C-o>zz
" map <C-i> <C-i>zz

nnoremap ZZ  <Nop>

"noremap      x  "_x
vnoremap     y  ygv<Esc>
vnoremap     <  <gv
vnoremap     >  >gv

nnoremap zO zCzO
" # }}}

set background=dark

if ! has('nvim')
    set nocursorline
    set notermguicolors
    colorscheme default

elseif $MYOS ==# "wsl"
    let g:gruvbox_contrast_dark = 'hard'
    "let g:gruvbox_termcolors = 16

    set notermguicolors
    set nocursorline
    set nocursorcolumn
    set colorcolumn=""
    set signcolumn=no
    let g:ale_sign_column_always=0
    let g:signify_disable_by_default=1
    colorscheme default
    " set notermguicolors
    " colorscheme base16-default-dark

elseif $TERM ==# "dos"
    set nocursorline

else " standard linux nvim
    set termguicolors
    colorscheme spg-gruvbox

endif
