set background=dark
hi! clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="idunno"

" hi! LightlineLeft_insert_0 ctermfg=235 ctermbg=109 guifg=#282828 guibg=#83a598
" hi! LightlineLeft_insert_0_1 ctermfg=109 ctermbg=241 guifg=#83a598 guibg=#665c54
" hi! LightlineLeft_insert_0_tabsel ctermfg=109 ctermbg=235 guifg=#83a598 guibg=#282828
" hi! LightlineLeft_insert_1 ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
" hi! LightlineLeft_insert_1_2 ctermfg=241 ctermbg=237 guifg=#665c54 guibg=#3c3836
" hi! LightlineLeft_normal_0_tabsel ctermfg=142 ctermbg=235 guifg=#b8bb26 guibg=#282828
" hi! LightlineRight_normal_0_tabsel ctermfg=243 ctermbg=235 guifg=#7c6f64 guibg=#282828
" hi! LightlineRight_normal_1_tabsel ctermfg=243 ctermbg=235 guifg=#7c6f64 guibg=#282828

" %{lightline#link()}
" %#LightlineLeft_active_0#         ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
" %( %{lightline#mode()} %)
" %{(&paste)||(&readonly)?"|":""}
" %( %{&paste?"PASTE":""} %)
" %{(&paste)&&((&readonly))?"|":""}
" %( %R %)
" %#LightlineLeft_active_0_1#       ctermfg=142 ctermbg=241 guifg=#b8bb26 guibg=#665c54
" %#LightlineLeft_active_1#         ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
" %( %t %)
" %{(&modified||!&modifiable)?"|":""
" %( %M %)
" %#LightlineLeft_active_1_2#       ctermfg=241 ctermbg=237 guifg=#665c54 guibg=#3c3836
" %#LightlineMiddle_active#         ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" %=
" %#LightlineRight_active_2_3#      ctermfg=237 ctermbg=237 guifg=#3c3836 guibg=#3c3836
" %#LightlineRight_active_2#        ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" %( %{&ff} %)
" %{1||1?"|":""}
" %( %{&fenc!=#""?&fenc:&enc} %)
" %{1?"|":""}
" %( %{&ft!=#""?&ft:"no ft"} %)
" %#LightlineRight_active_1_2#      ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" %#LightlineRight_active_1#        ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" %( %3p%% %)
" %#LightlineRight_active_0_1#      ctermfg=243 ctermbg=243 guifg=#7c6f64 guibg=#7c6f64
" %#LightlineRight_active_0#        ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" %( %l:%L:%-2v %)

" hi! StatDark1 ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
" hi! StatDark2 ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" hi! StatDark3 ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" hi! StatDark4 ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" hi! StatDark5 ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64

hi! link StatMode1 StatNormal1

hi! StatNormal1      ctermfg=235                    ctermbg=2
hi! StatInsert1      ctermfg=235                    ctermbg=13

hi! ModeMsg    ctermfg=7

"hi! StatDark1 ctermfg=235 ctermbg=240
hi! StatDark1 ctermfg=243 ctermbg=239
hi! StatDark2 ctermfg=242 ctermbg=237
"hi! StatDark3 ctermfg=243 ctermbg=237
hi! StatDark4 ctermfg=235 ctermbg=239
hi! StatDark5 ctermfg=235 ctermbg=242

hi! Search              ctermfg=237 ctermbg=5
hi! Visual              ctermfg=237 ctermbg=6
hi! StatusLine          ctermfg=243 ctermbg=237
hi! LineNr              ctermfg=238   ctermbg=234
hi! SignColumn          ctermfg=8   ctermbg=0
hi! CursorLine          cterm=none     ctermbg=237

hi! SignatureMarkText   ctermfg=12  ctermbg=0
hi! ColorColumn         ctermfg=12  ctermbg=0
hi! SignatureMarkerText ctermfg=10  ctermbg=0
hi! Pmenu               ctermfg=243  ctermbg=237
hi! PmenuSel            ctermfg=10  ctermbg=235

hi! Comment                        ctermfg=8
hi! Cursor                         ctermfg=0                      ctermbg=7
hi! CursorColumn                   ctermbg=10
hi! CursorLineNr                   ctermfg=4                     ctermbg=237
hi! MatchParen                     ctermbg=8

hi! link                           Folded                         PmenuSel
hi! link                           IncSearch                      Visual

hi! clear SignatureMarkLine

hi! Bold                           cterm=bold                     gui=bold
hi! Boolean                        ctermfg=9
hi! Character                      ctermfg=1
hi! Conceal                        ctermfg=4                      ctermbg=0
hi! Conditional                    ctermfg=5
hi! Constant                       ctermfg=9
hi! Debug                          ctermfg=1
hi! Define                         ctermfg=5
hi! Delimiter                      ctermfg=14
hi! DiffAdd                        ctermfg=2                      ctermbg=10
hi! DiffAdded                      ctermfg=2                      ctermbg=0
hi! DiffChange                     ctermfg=8                      ctermbg=10
hi! DiffDelete                     ctermfg=1                      ctermbg=10 gui=bold
hi! DiffFile                       ctermfg=1                      ctermbg=0
hi! DiffLine                       ctermfg=4                      ctermbg=0
hi! DiffNewFile                    ctermfg=2                      ctermbg=0
hi! DiffRemoved                    ctermfg=1                      ctermbg=0
hi! DiffText                       cterm=bold                     ctermfg=4 ctermbg=10 gui=bold
hi! Directory                      ctermfg=4
hi! Error                          ctermfg=14                     ctermbg=1
hi! ErrorMsg                       ctermfg=1                      ctermbg=0
hi! Exception                      ctermfg=1
hi! Float                          ctermfg=9
hi! FoldColumn                     ctermfg=6                      ctermbg=10
hi! Function                       ctermfg=4
hi! Identifier                     ctermfg=1
hi! Ignore                         ctermfg=0
hi! Include                        ctermfg=4
hi! Keyword                        ctermfg=5
hi! Label                          ctermfg=3
hi! Macro                          ctermfg=1
hi! MoreMsg                        ctermfg=2                      gui=bold
hi! NERDTreeDirSlash               ctermfg=4
hi! NERDTreeExecFile               ctermfg=7
hi! NonText                        ctermfg=4                      gui=bold
hi! Normal                         ctermfg=7                      ctermbg=0
hi! Number                         ctermfg=9
hi! Operator                       ctermfg=7
hi! ParenMatch                     ctermfg=5                      cterm=underline  gui=underline
hi! PmenuSbar                      ctermbg=248
hi! PmenuThumb                     ctermbg=15
hi! PreProc                        ctermfg=3
hi! Question                       ctermfg=4                      gui=bold
hi! QuickFixLine                   ctermbg=10
hi! Repeat                         ctermfg=3
hi! Special                        ctermfg=6
hi! SpecialChar                    ctermfg=14
hi! SpecialKey                     ctermfg=8
hi! SpellBad                       cterm=undercurl                ctermbg=0 gui=undercurl  guisp=#fb4934
hi! SpellCap                       cterm=undercurl                ctermbg=0 gui=undercurl  guisp=#83a598
hi! SpellLocal                     cterm=undercurl                ctermbg=0 gui=undercurl  guisp=#8ec07c
hi! SpellRare                      cterm=undercurl                ctermbg=0 gui=undercurl  guisp=#d3869b
hi! Statement                      ctermfg=1                      gui=bold
hi! StatusLineNC                   ctermfg=8                      ctermbg=10
hi! StorageClass                   ctermfg=3
hi! String                         ctermfg=2
hi! Structure                      ctermfg=5
hi! TabLine                        ctermfg=8                      ctermbg=10
hi! TabLineFill                    ctermfg=8                      ctermbg=10
hi! TabLineSel                     ctermfg=2                      ctermbg=10
hi! Tag                            ctermfg=3
hi! TermCursor                     cterm=reverse                  gui=reverse
hi! Title                          ctermfg=4
hi! Todo                           ctermfg=3                      ctermbg=10
hi! TooLong                        ctermfg=1
hi! Type                           ctermfg=3
hi! Typedef                        ctermfg=3
hi! Underlined                     cterm=underline                ctermfg=1 gui=underline
hi! VertSplit                      ctermfg=11                     ctermbg=11
hi! VisualNOS                      ctermfg=1
hi! WarningMsg                     ctermfg=1
hi! WildMenu                       ctermfg=1                      ctermbg=11
hi! cOperator                      ctermfg=6
hi! cPreCondit                     ctermfg=5
hi! csAttribute                    ctermfg=3
hi! csClass                        ctermfg=3
hi! csContextualStatement          ctermfg=5
hi! csModifier                     ctermfg=5
hi! csNewDecleration               ctermfg=1
hi! csType                         ctermfg=1
hi! csUnspecifiedStatement         ctermfg=4
hi! cssBraces                      ctermfg=7
hi! cssClassName                   ctermfg=5
hi! cssColor                       ctermfg=6
hi! gitcommitBranch                cterm=bold                     ctermfg=9 gui=bold
hi! gitcommitComment               ctermfg=8
hi! gitcommitDiscarded             ctermfg=8
hi! gitcommitDiscardedFile         cterm=bold                     ctermfg=1 gui=bold
hi! gitcommitDiscardedType         ctermfg=4
hi! gitcommitHeader                ctermfg=5
hi! gitcommitOverflow              ctermfg=1
hi! gitcommitSelected              ctermfg=8
hi! gitcommitSelectedFile          cterm=bold                     ctermfg=2 gui=bold
hi! gitcommitSelectedType          ctermfg=4
hi! gitcommitSummary               ctermfg=2
hi! gitcommitUnmergedFile          cterm=bold                     ctermfg=1 gui=bold
hi! gitcommitUnmergedType          ctermfg=4
hi! gitcommitUntracked             ctermfg=8
hi! gitcommitUntrackedFile         ctermfg=3
hi! htmlBold                       ctermfg=3
hi! htmlEndTag                     ctermfg=7
hi! htmlItalic                     ctermfg=5
hi! htmlTag                        ctermfg=7
hi! javaScript                     ctermfg=7
hi! javaScriptBraces               ctermfg=7
hi! javaScriptNumber               ctermfg=9
hi! jsBuiltins                     ctermfg=3
hi! jsClassDefinition              ctermfg=3
hi! jsClassFuncName                ctermfg=4
hi! jsClassMethodType              ctermfg=5
hi! jsExceptions                   ctermfg=3
hi! jsFuncCall                     ctermfg=4
hi! jsFuncName                     ctermfg=4
hi! jsFunction                     ctermfg=5
hi! jsGlobalNodeObjects            ctermfg=3
hi! jsGlobalObjects                ctermfg=3
hi! jsOperator                     ctermfg=4
hi! jsRegexpString                 ctermfg=6
hi! jsReturn                       ctermfg=5
hi! jsStatement                    ctermfg=5
hi! jsThis                         ctermfg=1
hi! mailEmail                      ctermfg=4
hi! mailQuoted1                    ctermfg=3
hi! mailQuoted2                    ctermfg=2
hi! mailQuoted3                    ctermfg=5
hi! mailQuoted4                    ctermfg=6
hi! mailQuoted5                    ctermfg=4
hi! mailQuoted6                    ctermfg=3
hi! mailURL                        ctermfg=4
hi! markdownCode                   ctermfg=2
hi! markdownCodeBlock              ctermfg=2
hi! markdownError                  ctermfg=7                      ctermbg=0
hi! markdownHeadingDelimiter       ctermfg=4
hi! phpComparison                  ctermfg=7
hi! phpMemberSelector              ctermfg=7
hi! phpParent                      ctermfg=7
hi! pythonInclude                  ctermfg=5
hi! pythonOperator                 ctermfg=5
hi! pythonRepeat                   ctermfg=5
hi! pythonStatement                ctermfg=5
hi! rubyAttribute                  ctermfg=4
hi! rubyConstant                   ctermfg=3
hi! rubyInterpolationDelimiter     ctermfg=14
hi! rubyRegexp                     ctermfg=6
hi! rubyStringDelimiter            ctermfg=2
hi! rubySymbol                     ctermfg=2
hi! sassClassChar                  ctermfg=9
hi! sassInclude                    ctermfg=5
hi! sassMixinName                  ctermfg=4
hi! sassMixing                     ctermfg=5
hi! sassidChar                     ctermfg=1
hi! link                           EndOfBuffer                    NonText
hi! link                           PreCondit                      PreProc
hi! link                           SpecialComment                 Special
hi! link                           Substitute                     Search
hi! link                           SyntasticError                 SpellBad
hi! link                           SyntasticErrorSign             Error
hi! link                           SyntasticStyleError            SyntasticError
hi! link                           SyntasticStyleErrorLine        SyntasticErrorLine
hi! link                           SyntasticStyleErrorSign        SyntasticErrorSign
hi! link                           SyntasticStyleWarning          SyntasticWarning
hi! link                           SyntasticStyleWarningLine      SyntasticWarningLine
hi! link                           SyntasticStyleWarningSign      SyntasticWarningSign
hi! link                           SyntasticWarning               SpellCap
hi! link                           SyntasticWarningSign           Todo
hi! link                           Whitespace                     NonText
hi! link                           deniteMatchedChar              Search
hi! link                           deniteMatchedRange             Underlined
hi! link                           deniteMode                     ModeMsg
hi! link                           deniteSelectedLine             Statement
hi! link                           deniteSourceLine_buffer        Type
hi! link                           deniteSourceLine_file_mru      Type
hi! link                           deniteSource_buffer_Info       PreProc
hi! link                           deniteSource_buffer_Modified   Statement
hi! link                           deniteSource_buffer_Name       Function
hi! link                           deniteSource_buffer_NoFile     Function
hi! link                           deniteSource_buffer_Prefix     Constant
hi! link                           deniteSource_buffer_Time       Statement
hi! link                           deniteStatusLineNumber         LineNr
hi! link                           deniteStatusLinePath           Comment
hi! link                           neosnippetExpandSnippets       Special
