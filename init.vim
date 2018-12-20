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
    let g:python3_host_prog  = 'C:\ProgramData\Miniconda3\python.exe'
else
    let g:Psep = ':'
    let g:Fsep = '/'
    let g:python_host_prog  = '/usr/bin/python2'
    let g:python3_host_prog  = '/usr/bin/python3'
endif


let g:cache_home =  exists('$XDG_CACHE_HOME') ? '$XDG_CACHE_HOME' : '$HOME/.cache'
let g:config_home =  exists('$XDG_CONFIG_HOME') ? '$XDG_CONFIG_HOME' : '$HOME/.config'

"""" DIRECTORIES

if has('nvim')
    let g:vim_home_dir = g:config_home . '/nvim/'
    let g:plugin_dir = g:cache_home . '/nvim/nvimplugs/'
    let g:backup_dir = g:cache_home . '/nvim/backup/'
    let g:vim_snips_dir = g:vim_home_dir . '/snips/'
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

let g:session_directory = expand('$HOME/.vim/sessions')
let g:startify_session_dir = g:session_directory
let g:denite_source_session_path = g:session_directory

if !isdirectory(g:session_directory)
    call mkdir(g:session_directory, 'p')
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
"if has('nvim')
    exec 'source ' . g:rc_dir . 'plugins.vim'
"endif
exec 'source ' . g:rc_dir .  'functions.vim'
exec 'source ' . g:rc_dir . 'keys.vim'
exec 'source ' . g:rc_dir .  'color.vim'
