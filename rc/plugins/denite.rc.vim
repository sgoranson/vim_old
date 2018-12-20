if executable('rg')
    call denite#custom#var('file_rec', 'command', ['rg', '--files', '--hidden', '--glob', '!.git'])

    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '-S'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
else
    call denite#custom#var('file_rec', 'command',
                \ ['ag', '--follow', '--hidden', '--nocolor', '--nogroup', '-g', ''])
endif

call denite#custom#alias('source', 'file_mru/git', 'file_mru')
call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
            \   ['git', 'ls-files', '--cached', '--others', '--exclude-standard'] )

call denite#custom#alias('source', 'grep/git', 'grep')
call denite#custom#var('grep/git', 'command', ['git', '--no-pager', 'grep'])
call denite#custom#var('grep/git', 'default_opts',
            \   ['--ignore-case', '--cached', '--untracked', '--exclude-standard', '-nH'] )
call denite#custom#var('grep/git', 'recursive_opts', [])
call denite#custom#var('grep/git', 'pattern_opt', ['--extended-regexp'])
call denite#custom#var('grep/git', 'separator', [])
call denite#custom#var('grep/git', 'final_opts', [])


call denite#custom#var('commands', 'config', g:vim_home_dir . '/mycmds.json' )


call denite#custom#source('unite:mapping', 'sorters', ['sorter/word'])

call denite#custom#var('neoyank', 'default_action', ['yank'])

call denite#custom#source('grep,grep/git,file_mru,buffer,file_rec/git,line,help,unite',
            \ 'matchers', ['matcher_substring'])
call denite#custom#source('file_rec', 'matchers', ['matcher_substring', 'matcher_project_files'])
call denite#custom#source('file_mru/git', 'matchers', ['matcher_substring', 'matcher_project_files'])
call denite#custom#source('line', 'converters', ['converter_relative_word'])
" call unite#custom#source('file_rec', 'ignore_globs',
"             \ ['./ignore1', './ignore2/ignore3'])

call denite#custom#map('insert', '<Down>', '<C-G>')
call denite#custom#map('insert', '<C-j>', '<C-G>')
call denite#custom#map('insert', '<Up>', '<C-T>')
call denite#custom#map('insert', '<C-k>', '<C-T>')

call denite#custom#map('insert','<C-f>','<denite:scroll_page_forwards>','noremap')
call denite#custom#map('insert','<C-b>','<denite:scroll_page_backwards>','noremap')

call denite#custom#map('insert','<Tab>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<C-s>','<denite:do_action:split>','noremap')
call denite#custom#map('insert','<C-v>','<denite:do_action:vsplit>','noremap')
call denite#custom#map('insert','<S-Tab>','<denite:move_to_previou_line>','noremap')
call denite#custom#map('insert','<C-space>','<denite:choose_action>','noremap')


let s:denite_options = {'default' : {
            \ 'winheight' : 15,
            \ 'mode' : 'insert',
            \ 'smartcase' : 'true',
            \ 'highlight_matched_char' : 'Function',
            \ 'highlight_matched_range' : 'Function',
            \ 'direction': 'rightbelow',
            \ 'statusline' : 'false',
            \'prompt' : 'λ',
            \ }}

function! s:profile(opts) abort
    for fname in keys(a:opts)
        for dopt in keys(a:opts[fname])
            call denite#custom#option(fname, dopt, a:opts[fname][dopt])
        endfor
    endfor
endfunction

call s:profile(s:denite_options)



let s:menus = {}
let s:menus.zsh = {
    \ 'description': 'Edit your import zsh configuration'
    \ }
let s:menus.zsh.file_candidates = [
    \ ['zshrc', '~/.config/zsh/.zshrc'],
    \ ['zshenv', '~/.zshenv'],
    \ ]

let s:menus.my_commands = {
    \ 'description': 'Example commands'
    \ }
let s:menus.my_commands.command_candidates = [
    \ ['Split the window', 'vnew'],
    \ ['Open zsh menu', 'Denite menu:zsh'],
    \ ]

call denite#custom#var('menu', 'menus', s:menus)

let g:unite_source_bookmark_directory = g:vim_home_dir . '/bookmarks/'



call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 30,
\   'direction': 'botright',
\ })

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " Overwrite settings.

    imap <buffer> <C-n>   <Plug>(unite_select_next_line)
    imap <buffer> <C-p>   <Plug>(unite_select_previous_line)

    imap <buffer> <C-o>   <Plug>(unite_insert_leave)
    imap <buffer> <Esc>   <Plug>(unite_exit)


    nnoremap <silent><buffer><expr> l
                \ unite#smart_map('l', unite#do_action('default'))


    " Runs "split" action by <C-s>.
    imap <silent><buffer><expr> <C-s>     unite#do_action('split')
endfunction

" vim:ff=unix:
