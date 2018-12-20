" INIT  {{{1
set encoding=utf-8
scriptencoding utf-8



function! PlugOnLoad(name, exec)
    if !has_key(g:plugs, a:name)
        return
    endif
    if has_key(g:plugs[a:name], 'on') || has_key(g:plugs[a:name], 'for')
        execute 'autocmd! User' a:name a:exec
    else
        execute 'autocmd VimEnter *' a:exec
    endif
endfunction

" auto-install vim-plug
if empty(glob(g:vim_home_dir . g:Fsep . 'autoload' . g:Fsep . 'plug.vim'))
    !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin(g:plugin_dir)

" }}}

" TPOPE {{{
Plug 'chrisbra/vim-zsh'                          " :Delete, :Rename, :SudoWrite

Plug 'tpope/vim-eunuch'                          " :Delete, :Rename, :SudoWrite
Plug 'tpope/vim-unimpaired'                      " yo, ]b, etc
Plug 'tpope/vim-commentary'                      " gcc, gcW, g/TODO/Commentary
Plug 'tpope/vim-fugitive'                        " git helper
Plug 'tpope/vim-repeat'                          " dot repeat for plugins
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'


function! StartUnimpaired()
    silent!  nunmap [e
    silent!  nunmap ]e
endfunction

call PlugOnLoad('vim-unimpaired', 'call StartUnimpaired()')

Plug 'tpope/vim-surround'                        " ysw', cst<p>, vS'
" undo any <C-g> or else it will be slllowwwww
silent! iunmap <C-g>s
silent! iunmap <C-g>S


" }}}

" NEW NORMAL COMMANDS  {{{1
" Plug 'neoclide/rename.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-scripts/ReplaceWithRegister'            " provides gr wont autocopy v selection on paste

" Plug 'guyzmo/EnhancedJumps'
Plug 'inkarkat/vim-ingo-library'
let g:EnhancedJumps_CaptureJumpMessages = 0
let g:stopFirstAndNotifyTimeoutLen = 2000

" function! StartEnhancedJumps()
"     silent!  nunmap <C-o>
"     silent!  nunmap <C-i>
"     nmap <C-o>   <Plug>EnhancedJumpsLocalOlder
"     nmap <C-i>   <Plug>EnhancedJumpsLocalNewer
" endfunction

" call PlugOnLoad('vim-unimpaired', 'call StartEnhancedJumps()')

Plug 'easymotion/vim-easymotion'
let g:EasyMotion_keys = 'asdfghjkl;qwertyuiopzxcvbnmASDFGHJKLQWERTYUIOPZXCVBNM'
let g:Easymotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
Plug 'dzeban/vim-log-syntax'
" Plug 'bronson/vim-visual-star-search'            " viw * will search

Plug 'junegunn/vim-easy-align'                   " ga =
" Plug 'vim-scripts/UnconditionalPaste'            " force blockwise/linewise pasting...gcp
" function! StartUnconditional()
"     silent!  nunmap gpp
"     silent!  nunmap gpP
" endfunction
" call PlugOnLoad('UnconditionalPaste', 'call StartUnconditional()')
" }}}

" NEW EX COMMANDS {{{1
" Plug 'vim-scripts/YankRing.vim'                             " yank history
" let g:yankring_history_dir = '$XDG_CACHE_HOME'
" let g:yankring_window_height = 20
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

let g:session_autosave = 'no'
let g:session_autoload = 'no'

Plug 'sjl/gundo.vim'                                      " :GundoToggle
Plug 'dhruvasagar/vim-table-mode'                         " :Tableize
Plug 'brooth/far.vim', { 'do': ':UpdateRemotePlugins' }   " :Far foo bar **/*.py<CR>

Plug 'Chiel92/vim-autoformat'              " :Autoformat (astyle, yapf, etc)

if !exists('g:formatdef_astyle_ps1')
    if filereadable('.astylerc')
        let g:formatdef_astyle_ps1 = '"astyle --mode=c --options=.astylerc"'
    elseif filereadable(expand('~/.astylerc')) || exists('$ARTISTIC_STYLE_OPTIONS')
        let g:formatdef_astyle_ps1 = '"astyle --mode=c"'
    else
        let g:formatdef_astyle_ps1 = '"astyle --mode=c --style=ansi --indent-namespaces -pcH".(&expandtab ? "s".shiftwidth() : "t")'
    endif
endif

let g:formatters_ps1 = ['astyle_ps1']

Plug 'rizzatti/dash.vim'                         " :Dash TERM KEYWORD
Plug 'vim-scripts/BufOnly.vim'                   " close all bufs but this one

Plug 'Ron89/thesaurus_query.vim'

let g:tq_language=['en']
let g:tq_enabled_backends=['thesaurus_com', 'openoffice_en']

" }}}

" TEXT OBJECTS {{{1
Plug 'haya14busa/vim-textobj-function-syntax'  " req lib
Plug 'kana/vim-textobj-user'                   " req lib (diy objs)
" [[plugins]]
" Plug 'wellle/targets.vim'                    " a textobj
Plug 'kana/vim-textobj-indent'                 " i textobj
Plug 'kana/vim-textobj-function'               " f textobj
Plug 'kana/vim-textobj-line'                   " l textobj
Plug 'beloglazov/vim-textobj-quotes'           " q textobj
Plug 'kana/vim-textobj-help'
"Plug 'nelstrom/vim-textobj-rubyblock'          " r textobj
Plug 'rhysd/vim-textobj-anyblock'               " b textobj (parens, quotes, brackets, <)
Plug 'terryma/vim-expand-region'

" }}}

" DENITE {{{1

Plug 'thinca/vim-ref'
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Jagua/vim-denite-ghq'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_bookmarks = [ '~/.zsh', '~/.zsh/aliases.zsh', '~/.config/nvim/rc/keys.vim' ]

function! StartDenite()
    exec 'source ' . g:rc_dir . 'plugins/denite.rc.vim'
endfunction

call PlugOnLoad('denite.nvim', 'call StartDenite()')



Plug 'yyotti/denite-marks'
" Plug 'kmnk/denite-dirmark'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
"Plug '~/dev/neoyank.vim'
Plug 'Shougo/deol.nvim'

" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" if has('nvim')
"   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/defx.nvim'
" endif

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> E
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> <BS>
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Esc>
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
endfunction


let g:neoyank#file = expand('$XDG_CACHE_HOME/neoyank.yanks')
" let g:neoyank#save_registers = [ '"' ]
let g:neoyank#limit = 10

Plug 'neoclide/denite-git'
Plug 'neoclide/vim-easygit'
Plug 'neoclide/denite-extra'


Plug 'Shougo/unite-outline'
Plug 'Shougo/tabpagebuffer.vim'

" }}}

" COMPLETION / DEOPLETE  {{{1
" Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1

function! StartDeoplete() " {{{2
    let g:deoplete#enable_at_startup = 0

    " Use auto delimiter
    " call deoplete#custom#source('_', 'converters',
    "       \ ['converter_auto_paren',
    "       \  'converter_auto_delimiter', 'remove_overlap'])

    " call deoplete#custom#source('_', 'converters', [
    "       \ 'converter_remove_paren',
    "       \ 'converter_remove_overlap',
    "       \ 'converter_truncate_abbr',
    "       \ 'converter_truncate_menu',
    "       \ 'converter_auto_delimiter',
    "       \ ])

    " show snips first
    "call deoplete#custom#source('neosnippet', 'rank', 1000)
    call deoplete#custom#source('ultisnips', 'rank', 1000)
    " ditch fuzzy mwatching
    call deoplete#custom#source('_', 'matchers', ['matcher_head'])

    " call deoplete#custom#source('buffer', 'min_pattern_length', 9999)
    call deoplete#custom#source('clang', 'input_pattern', '\.\w*|\.->\w*|\w+::\w*')
    call deoplete#custom#source('clang', 'max_pattern_length', -1)


    let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
    let g:deoplete#sources#ternjs#types = 1
    let g:deoplete#sources#ternjs#docs = 1

    let g:deoplete#keyword_patterns = {}
    let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
    let g:deoplete#keyword_patterns.tex = '[^\w|\s][a-zA-Z_]\w*'

    let g:deoplete#omni#input_patterns = {}
    let g:deoplete#omni#input_patterns.python = ''


    let g:deoplete#omni#functions = {}

    let g:deoplete#omni#functions.javascript = [ 'tern#Complete', 'jspc#omni' ]

    let g:tern#command = ["/usr/bin/tern"]
    let g:tern#arguments = ["--persistent"]


    let g:deoplete#sources#jedi#enable_typeinfo = 0
    let g:deoplete#sources#jedi#show_docstring = 1

    " inoremap <silent><expr> <C-t> deoplete#manual_complete('file')

    "let g:deoplete#enable_refresh_always = 0
    let g:deoplete#enable_camel_case = 0
    " let g:deoplete#auto_complete_delay = 50
    " let g:deoplete#auto_complete_start_length = 3

endfunction " }}}

call PlugOnLoad('deoplete.nvim', 'call StartDeoplete()')

Plug 'zchee/deoplete-jedi'

Plug 'zchee/deoplete-zsh'

Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'othree/jspc.vim'

Plug 'zchee/deoplete-go'
Plug 'roxma/nvim-yarp'

Plug 'roxma/vim-hug-neovim-rpc'

Plug 'Shougo/neco-vim'                  " vimscript completion
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neoinclude.vim'            " smarter completion
Plug 'fishbullet/deoplete-ruby'
Plug 'Shougo/deoplete-rct'              " ruby rcodetools


Plug 'pangloss/vim-javascript'
let g:javascript_plugin_flow = 1

Plug 'wokalski/autocomplete-flow'
Plug 'davidhalter/jedi'                 " used in paralell for GotoDefinition
let g:jedi#show_call_signatures = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_assignments_command = ''  " dynamically done for ft=python.
let g:jedi#goto_definitions_command = ''  " dynamically done for ft=python.
let g:jedi#use_tabs_not_buffers = 0  " current default is 1.
let g:jedi#rename_command = '<Leader>gR'
let g:jedi#usages_command = '<Leader>gu'
let g:jedi#completions_enabled = 0
let g:jedi#smart_auto_mappings = 1

" Unite/ref and pydoc are more useful.
let g:jedi#documentation_command = '<Leader>_K'
let g:jedi#auto_close_doc = 1


" Plug 'vim-scripts/ingo-library'
" Plug 'xolox/vim-misc'
Plug 'chrisbra/unicode.vim'

" }}}

" SNIPPETS {{{1
" Track the engine.
Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/context_filetype.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

let g:neosnippet#snippets_directory=g:vim_snips_dir
let g:neosnippet#enable_auto_clear_markers=1
let g:neosnippet#enable_completed_snippet=1
" }}}

" LINT {{{
" Plug 'w0rp/ale'                            " great linter

let g:ale_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
"let g:ale_sh_shell_default_shell = 'sh'
let g:ale_html_stylelint_executable = 'stylelint --config-basedir /usr/lib/node_modules/'
let g:ale_linters = {
            \   'css': ['stylelint --config-basedir /usr/lib/node_modules/'],
            \   'javascript': ['eslint'],
            \   'zsh': ['shellcheck']
            \}

let g:ale_fixers = {'javascript': ['prettier-eslint']}
" let g:ale_javascript_eslint_options = ' -c  eslint-config-prettier'

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)

call plug#end()

let &runtimepath.=',' . g:vim_home_dir

" }}}

" FILESYSTEM  {{{1
Plug 'airblade/vim-rooter'                            " change to project root automatic
Plug 'Shougo/vimfiler.vim'
Plug 'romgrk/vimfiler-prompt'

function! StartVimfiler()
    " call vimfiler#custom#profile('default', 'context', {
    "             \ 'safe' : 0,
    "             \ 'auto_expand' : 1,
    "             \ 'explorer' : 1,
    "             \ 'parent' : 0,
    "             \ })

    let g:vimfiler_as_default_explorer = 1
    " Like Textmate icons.
    let g:vimfiler_tree_leaf_icon = ' '
    let g:vimfiler_tree_opened_icon = '▾'
    let g:vimfiler_tree_closed_icon = '▸'
    let g:vimfiler_file_icon = ' '
    let g:vimfiler_readonly_file_icon = '✗'
    let g:vimfiler_marked_file_icon = '✓'

    autocmd FileType vimfiler call s:vimfiler_my_settings()
    function! s:vimfiler_my_settings() abort
        nmap <buffer> <Tab> <Plug>(vimfiler_switch_to_other_window)
    endfunction
endfunction

call PlugOnLoad('vimfiler.vim', 'call StartVimfiler()')

" }}}

" FILETYPES  {{{1

Plug 'alexgenco/neovim-ruby'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'pboettch/vim-cmake-syntax'
" Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'mattn/emmet-vim'                         " html quicktyper <C-y>,
let g:user_emmet_leader_key = '<C-y>'

Plug 'godlygeek/tabular'
" Plug 'tpope/vim-markdown'
" Plug 'nelstrom/vim-markdown-folding'
"Plug 'plasticboy/vim-markdown'
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_folding_level = 1


" Plug 'jaxbot/browserlink.vim'             " live html refresh

" Plug 'jamessan/vim-gnupg'                 " handy gpg encryption


Plug 'darfink/vim-plist'                         " osx plist
let g:plist_save_format = 'binary'
let g:plist_display_format = 'xml'

Plug 'alx741/vinfo'                              " cause fuck emacs info pages

Plug 'pangloss/vim-javascript'                   " snips

Plug 'PProvost/vim-ps1'                          " powershell

Plug 'cespare/vim-toml'                          " toml

Plug 'syngan/vim-vimlint'
Plug 'ynkdir/vim-vimlparser'
" [[plugins]]
" Plug 'python-mode/python-mode'                 " ]m, ]c
" hook_add = '''
"     let g:pymode_python = 'python3'
"     let g:pymode_rope_autoimport_import_after_complete = 1
"     let g:pymode_rope_autoimport = 1
"     let g:pymode_rope_completion_bind = '<C-Space>'
"     let g:pymode_rope_complete_on_dot = 1
"     let g:pymode_rope_completion = 1
" '''
"
" }}}

" COLOR {{{1
" Plug 'ap/vim-css-color'
Plug 'chrisbra/Colorizer'
Plug 'chriskempson/base16-vim'
Plug 'guns/xterm-color-table.vim'
Plug 'jaywilliams/vim-vwilight'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
" Plug 'shinchu/lightline-gruvbox.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'KabbAmine/vCoolor.vim'
Plug 'vim-scripts/SyntaxAttr.vim'
" }}}

" GUI  {{{1
Plug 'severin-lemaignan/vim-minimap'
Plug 'equalsraf/neovim-gui-shim'           " nvim gui requirement
"Plug 'Konfekt/FastFold'                    " speeds up folding
" Plug 'powerman/vim-plugin-AnsiEsc'           " gets rid of ^H shit

if has('nvim')
    " Plug 'blueyed/vim-diminactive'              " change color of inactive window
    let g:diminactive_use_syntax = 1
    let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'unite']
    let g:diminactive_enable_focus = 1
endif

Plug 'itchyny/vim-parenmatch'               " internal parenmatch highlights sux

" Plug 'bling/vim-bufferline'


Plug 'itchyny/lightline.vim'



function! MyGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    return ''
  endif
  let symbols = [
        \ g:gitgutter_sign_added . ' ',
        \ g:gitgutter_sign_modified . ' ',
        \ g:gitgutter_sign_removed . ' '
        \ ]
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction


let g:lightline = {
            \ 'colorscheme': 'one',
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '', 'right': '' },
            \ 'enable': { 'tabline': 0 },
            \ 'active': {
            \   'left': [ [ 'mode', 'paste'], [ 'readonly', 'fname', 'modified' ], [ 'mygutter' ] ],
            \ 'right': [ [ 'linez' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component_function': {
            \   'mygutter': 'MyGitGutter',
            \   'cocstatus': 'coc#status'
            \ }
            \ }

let g:lightline.inactive = {
    \ 'left': [ [ 'fname' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'percent' ] ] }

let g:lightline.component = {
    \   'fname': '%<%f',
		    \ 'linez': '%3l:%-2L' }

" let g:lightline = {
"       \ 'colorscheme': 'gruvbox',
"       \ 'tabline': {
"       \   'left': [ ['bufferline'] ]
"       \ },
"       \ 'component_expand': {
"       \   'bufferline': 'LightlineBufferline',
"       \ },
"       \ 'component_type': {
"       \   'bufferline': 'tabsel',
"       \ },
"       \ }



" function! LightlineBufferline()
"   call bufferline#refresh_status()
"   return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
" endfunction




" Plug 'mkitt/tabline.vim'
Plug 'gcmt/taboo.vim'
Plug 'kshenoy/vim-signature'                " shows marks, m/ shortcuts

let g:SignatureMap = {
            \ 'Leader'             :  'm',
            \ 'PlaceNextMark'      :  'm,',
            \ 'ToggleMarkAtLine'   :  'm.',
            \ 'PurgeMarksAtLine'   :  'm-',
            \ 'DeleteMark'         :  'dm',
            \ 'PurgeMarks'         :  'm<Space>',
            \ 'PurgeMarkers'       :  'm<BS>',
            \ 'GotoNextLineAlpha'  :  '',
            \ 'GotoPrevLineAlpha'  :  '',
            \ 'GotoNextSpotAlpha'  :  '',
            \ 'GotoPrevSpotAlpha'  :  '',
            \ 'GotoNextLineByPos'  :  '',
            \ 'GotoPrevLineByPos'  :  '',
            \ 'GotoNextSpotByPos'  :  '',
            \ 'GotoPrevSpotByPos'  :  '',
            \ 'GotoNextMarker'     :  ']-',
            \ 'GotoPrevMarker'     :  '[-',
            \ 'GotoNextMarkerAny'  :  ']=',
            \ 'GotoPrevMarkerAny'  :  '[=',
            \ 'ListBufferMarks'    :  'm/',
            \ 'ListBufferMarkers'  :  'm?'
            \ }

  let g:SignatureMarkTextHLDynamic = 0
 let g:SignatureMarkTextHL = "MatchParen"

Plug 'airblade/vim-gitgutter'          " shows changed lines, ]c hunk jumps
let g:gitgutter_max_signs = 10000
let g:gitgutter_map_keys = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_removed = '-'

" Plug 'ryanoasis/vim-devicons'
" Plug 'vim-ctrlspace/vim-ctrlspace'

" let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }

" let g:CtrlSpaceDefaultMappingKey = "<C-p>"

" if executable("ag")
"     let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
" endif

call plug#end()

" vim:foldmethod=marker:
