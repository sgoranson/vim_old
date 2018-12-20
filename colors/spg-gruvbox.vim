set background=dark
hi! clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='spg-gruvbox'


hi! link deniteMatchedRange ModeMsg
hi! link deniteMatchedChar ModeMsg

hi! link StatMode1 StatNormal1

hi! StatNormal1  ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
hi! StatInsert1  ctermfg=235 ctermbg=109 guifg=#282828 guibg=#83a598
hi! StatDark1  ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
hi! StatDark2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
hi! StatDark3  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
hi! StatDark4  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
hi! StatDark5  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64

hi! TabLineFill     ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836 cterm=NONE gui=NONE
hi! TabLine  cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
hi! link TabLine  TabLineFill
hi! TabLineSel      ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836



" hi! LightlineRight_normal_0  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" hi! LightlineRight_normal_0_1  ctermfg=243 ctermbg=243 guifg=#7c6f64 guibg=#7c6f64
" hi! LightlineRight_normal_1  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" hi! LightlineRight_normal_1_2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" hi! LightlineRight_normal_2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" hi! LightlineRight_normal_2_3  ctermfg=237 ctermbg=237 guifg=#3c3836 guibg=#3c3836

" hi! link StatMode1 StatNormal1
" hi! StatNormal1      ctermfg=235  ctermbg=2   guibg=#fabd2f guifg=#000000
" hi! StatInsert1      ctermfg=235  ctermbg=13  guibg=#d3869b guifg=#000000
" hi! StatDark1 ctermfg=243 ctermbg=239 guifg=#767676 guibg=#434343
" hi! StatDark2 ctermfg=242 ctermbg=237 guifg=#6c6c6c guifg=#3a3a3a
" "hi! StatDark3 ctermfg=243 ctermbg=237
" hi! StatDark4 ctermfg=235 ctermbg=239 guifg=#262626 guibg=#4e4e4e
" hi! StatDark5 ctermfg=235 ctermbg=242 guifg=#262626 guibg=#6c6c6c

" let g:bw = [ '#000000',
"             \    '#080808',  '#121212',  '#1c1c1c',  '#262626',   '#303030',   '#3a3a3a',
"             \    '#444444',  '#4e4e4e',  '#585858',  '#606060',   '#666666',   '#767676',
"             \    '#808080',  '#8a8a8a',  '#949494',  '#9e9e9e',   '#a8a8a8',   '#b2b2b2',
"             \    '#bcbcbc',  '#c6c6c6',  '#d0d0d0',  '#dadada',   '#e4e4e4',   '#eeeeee',
"             \    '#ffffff' ]

" let g:blue0 = '#14A1D0'
" let g:blue1 = '#a3e6fc'

" let g:magenta0 = '#8F007C'
" let g:magenta1 = '#cb00b1'
" let g:magenta2 = '#FF90F1'

" let g:green0 = '#113E12'
" let g:green1 = '#009103'
" let g:green2 = '#7ff081'

" let g:tan0 = '#2E2927'
" let g:tan1 = '#504945'
" let g:tan2 = '#3c3836'
" let g:tan3 = '#665c54'

" let g:colz = [ '#fe8019', '#fb4934', '#3c3836', '#665c54', '#d3869b', '#b8bb26', '#d5c4a1', '#fabd2f', '#d3869b', '#83a598' ]

" let c = 0

" for colx in g:colz
"     let colstr = printf('spgcol%x', c)
"     exec 'hi! ' . colstr . ' guibg=' . g:colz[c] . ' guifg='. g:bw[5]
"     exec 'syn match ' . colstr .  ' "' . colstr . '" containedin=ALL'
"     let c += 1
" endfor

" spgcol0
" spgcol1
" spgcol2
" spgcol3
" spgcol4
" spgcol5
" spgcol6
" spgcol7
" spgcol8
" spgcol9
" spgcola
" spgcolb

hi! GruvboxAqua       ctermfg=108 guifg=#8ec07c
hi! GruvboxBg0        ctermfg=234 guifg=#1d2021
hi! GruvboxBg1        ctermfg=237 guifg=#3c3836
hi! GruvboxBg2        ctermfg=239 guifg=#504945
hi! GruvboxBg3        ctermfg=241 guifg=#665c54
hi! GruvboxBg4        ctermfg=243 guifg=#7c6f64
hi! GruvboxBlue       ctermfg=109 guifg=#83a598
hi! GruvboxFg0        ctermfg=229 guifg=#fbf1c7
hi! GruvboxFg1        ctermfg=223 guifg=#ebdbb2
hi! GruvboxFg2        ctermfg=250 guifg=#d5c4a1
hi! GruvboxFg3        ctermfg=248 guifg=#bdae93
hi! GruvboxFg4        ctermfg=246 guifg=#a89984
hi! GruvboxGray       ctermfg=245 guifg=#928374
hi! GruvboxGreen      ctermfg=142 guifg=#b8bb26
hi! GruvboxOrange     ctermfg=208 guifg=#fe8019
hi! GruvboxPurple     ctermfg=175 guifg=#d3869b
hi! GruvboxRed        ctermfg=167 guifg=#fb4934
hi! GruvboxYellow     ctermfg=214 guifg=#fabd2f
hi! GruvboxRedBold    cterm=bold  ctermfg=167 gui=bold      guifg=#fb4934
hi! GruvboxGreenBold  cterm=bold  ctermfg=142 gui=bold      guifg=#b8bb26
hi! GruvboxYellowBold cterm=bold  ctermfg=214 gui=bold      guifg=#fabd2f
hi! GruvboxBlueBold   cterm=bold  ctermfg=109 gui=bold      guifg=#83a598
hi! GruvboxPurpleBold cterm=bold  ctermfg=175 gui=bold      guifg=#d3869b
hi! GruvboxAquaBold   cterm=bold  ctermfg=108 gui=bold      guifg=#8ec07c
hi! GruvboxOrangeBold cterm=bold  ctermfg=208 gui=bold      guifg=#fe8019
hi! GruvboxRedSign    ctermfg=167 ctermbg=237 guifg=#fb4934 guibg=#3c3836
hi! GruvboxGreenSign  ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#3c3836
hi! GruvboxYellowSign ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836
hi! GruvboxBlueSign   ctermfg=109 ctermbg=237 guifg=#83a598 guibg=#3c3836
hi! GruvboxPurpleSign ctermfg=175 ctermbg=237 guifg=#d3869b guibg=#3c3836
hi! GruvboxAquaSign   ctermfg=108 ctermbg=237 guifg=#8ec07c guibg=#3c3836

hi! Normal         ctermfg=223 ctermbg=234 guifg=#ebdbb2 guibg=#161819
hi! Identifier     ctermfg=1 guifg=#fb4934


hi! ColorColumn    ctermbg=237        guibg=#3c3836
hi! Comment        ctermfg=245        guifg=#928374
hi! Conceal        ctermfg=109        guifg=#eeeeee
hi! Cursor         cterm=reverse      gui=NONE guibg=#AC5FB8 guifg=#eeeeee
hi! CursorLine     cterm=NONE ctermbg=237        guibg=#3c3836
hi! Directory      ctermfg=159        guifg=Cyan
hi! Ignore         ctermfg=0          guifg=bg
hi! String         ctermfg=142        guifg=#b8bb26
hi! CursorLineNr   ctermfg=214        ctermbg=237   gui=NONE guifg=#fabd2f guibg=#3c3836
hi! DiffAdd        cterm=reverse      ctermfg=142   ctermbg=234   gui=reverse      guifg=#b8bb26 guibg=#1d2021
hi! DiffChange     cterm=reverse      ctermfg=108   ctermbg=234   gui=reverse      guifg=#8ec07c guibg=#1d2021
hi! DiffDelete     cterm=reverse      ctermfg=167   ctermbg=234   gui=reverse      guifg=#fb4934 guibg=#1d2021
hi! DiffText       cterm=reverse      ctermfg=214   ctermbg=234   gui=reverse      guifg=#fabd2f guibg=#1d2021
hi! Error          cterm=bold,reverse ctermfg=167   ctermbg=234   gui=reverse      guifg=#fb4934 guibg=bg
hi! ErrorMsg       cterm=bold         ctermfg=234   ctermbg=167   gui=NONE         guifg=#1d2021 guibg=#fb4934
hi! FoldColumn     ctermfg=245        ctermbg=237   guifg=#928374 guibg=#3c3836
hi! Folded         ctermfg=245        ctermbg=237   guifg=#928374 guibg=#3c3836
hi! MatchParen     cterm=bold         ctermbg=241   gui=NONE  guifg=#EBB8A9
hi! ParenMatch     cterm=bold         ctermbg=241   gui=NONE  guifg=#EBB8A9
hi! IncSearch      cterm=reverse      ctermfg=214   ctermbg=235   gui=reverse guifg=#86DFD5 guibg=#282828
hi! Search         cterm=reverse      ctermfg=208   ctermbg=235   gui=reverse guifg=#379F39 guibg=#272828
hi! SpellBad       cterm=undercurl    gui=undercurl guisp=#83a598
hi! SpellCap       cterm=undercurl    gui=undercurl guisp=#fb4934
hi! SpellLocal     cterm=undercurl    gui=undercurl guisp=#8ec07c
hi! SpellRare      cterm=undercurl    gui=undercurl guisp=#d3869b
hi! StatusLine     cterm=reverse      ctermfg=239   ctermbg=223   gui=reverse      guifg=#504945 guibg=#ebdbb2
hi! StatusLineNC   cterm=reverse      ctermfg=237   ctermbg=246   gui=reverse      guifg=#3c3836 guibg=#a89984
hi! Underlined     cterm=underline    ctermfg=109   gui=underline guifg=#83a598
hi! VertSplit      ctermfg=241        ctermbg=234   guifg=#665c54 guibg=#1d2021
hi! Visual         cterm=reverse      ctermbg=241   gui=reverse   guibg=#665c54
hi! Todo           cterm=bold         ctermfg=223   ctermbg=234   gui=NONE         guifg=fg      guibg=bg

hi! WildMenu       cterm=bold         ctermfg=109   ctermbg=239   gui=NONE         guifg=#83a598 guibg=#504945
hi! PmenuSbar      ctermbg=239        guibg=#504945
hi! PmenuThumb     ctermbg=243        guibg=#7c6f64
"hi! Pmenu          ctermfg=223        ctermbg=239   guifg=#ebdbb2 guibg=#504945
hi! Pmenu          ctermfg=223        ctermbg=239   guifg=#EBB8A9 guibg=#504945
hi! PmenuSel       cterm=bold         ctermfg=239   ctermbg=109   gui=NONE         guifg=#504945 guibg=#83a598

hi!  link Boolean        GruvboxPurple
hi!  link Character      GruvboxPurple
hi!  link Conditional    GruvboxRed
hi!  link Constant       GruvboxPurple
hi!  link Define         GruvboxAqua
hi!  link Directory      GruvboxGreen
hi!  link Exception      GruvboxRed
hi!  link Float          GruvboxPurple
hi!  link Function       GruvboxGreen
hi!  link Identifier     GruvboxBlue
hi!  link Include        GruvboxAqua
hi!  link Keyword        GruvboxRed
hi!  link Label          GruvboxRed
hi!  link Macro          GruvboxAqua
hi!  link ModeMsg        GruvboxYellow
hi!  link MoreMsg        GruvboxYellow
hi!  link NonText        GruvboxBg2
hi!  link Number         GruvboxPurple
hi!  link PreCondit      GruvboxAqua
hi!  link PreProc        GruvboxAqua
hi!  link Question       GruvboxOrange
hi!  link Repeat         GruvboxRed
hi!  link Special        GruvboxOrange
hi!  link SpecialKey     GruvboxBg2
hi!  link Statement      GruvboxRed
hi!  link StorageClass   GruvboxOrange
hi!  link Structure      GruvboxAqua
hi!  link Title          GruvboxGreen
hi!  link Type           GruvboxYellow
hi!  link Typedef        GruvboxYellow
hi!  link WarningMsg     GruvboxRed
hi!  link Substitute     Search
hi!  link EndOfBuffer    NonText
hi!  link Delimiter      Special
hi!  link CursorColumn   CursorLine
hi!  link Debug          Special
hi!  link Operator       Normal
hi!  link SpecialChar    Special
hi!  link SpecialComment Special
hi!  link Tag            Special
hi!  link VisualNOS      Visual
hi!  link Whitespace     NonText
hi!  link lCursor        Cursor
hi!  link TermCursor     Cursor
hi! clear NormalNC
hi! clear QuickFixLine
hi! clear TermCursorNC
"hi! clear SignColumn

hi! SignColumn     ctermbg=237     guifg=#3c3836   guibg=#3c3836
hi! FoldColumn     ctermfg=245 ctermbg=237 guifg=#928374 guibg=#3c3836
hi! LineNr         ctermfg=243 guifg=#7c6f64

hi! GitGutterAdd             ctermfg=2  ctermbg=10 guifg=#b8bb26 guibg=#3c3836
hi! GitGutterAddDefault      ctermfg=2  ctermbg=10 guifg=#009900 guibg=#3c3836
hi! GitGutterAddInvisible    ctermfg=10 ctermbg=10 guifg=bg      guibg=#3c3836
hi! GitGutterChange          ctermfg=4  ctermbg=10 guifg=#83a598 guibg=#3c3836
hi! GitGutterChangeDefault   ctermfg=3  ctermbg=10 guifg=#bbbb00 guibg=#3c3836
hi! GitGutterChangeDelete    ctermfg=5  ctermbg=10 guifg=#d3869b guibg=#3c3836
hi! GitGutterChangeInvisible ctermfg=10 ctermbg=10 guifg=bg      guibg=#3c3836
hi! GitGutterDelete          ctermfg=1  ctermbg=10 guifg=#fb4934 guibg=#3c3836
hi! GitGutterDeleteDefault   ctermfg=1  ctermbg=10 guifg=#ff2222 guibg=#3c3836
hi! GitGutterDeleteInvisible ctermfg=10 ctermbg=10 guifg=bg      guibg=#3c3836
hi! link GitGutterAddLine DiffAdd
hi! link GitGutterChangeDeleteDefault GitGutterChangeDefault
hi! link GitGutterChangeDeleteInvisible GitGutterChangeInvisble
hi! link GitGutterChangeDeleteLine GitGutterChangeLine
hi! link GitGutterChangeLine DiffChange
hi! link GitGutterDeleteLine DiffDelete
"hi! clear GitGutterChangeInvisble

hi! link EndOfBuffer NonText
hi! link PreCondit PreProc
hi! link SpecialComment Special
hi! link Substitute Search
hi! link Whitespace NonText
" hi!  NERDTreeDirSlash  ctermfg=4 guifg=#83a598
" hi!  NERDTreeExecFile  ctermfg=7 guifg=#d5c4a1
hi! SignatureMarkerText guifg=Green guibg=#3c3836
hi! clear SignatureMarkLine
" hi! Special ctermfg=6 guifg=#8ec07c
" hi! SpecialChar ctermfg=14 guifg=#d65d0e
" hi! SpecialKey ctermfg=8 guifg=#665c54
" hi! SpellBad cterm=NONE ctermbg=0 gui=NONE guibg=#1d2021
" hi! SpellCap cterm=NONE ctermbg=0 gui=NONE guibg=#1d2021 guisp=#83a598
" hi! SpellLocal cterm=undercurl ctermbg=0 gui=undercurl guibg=#1d2021 guisp=#8ec07c
" hi! SpellRare cterm=undercurl ctermbg=0 gui=undercurl guibg=#1d2021 guisp=#d3869b
" hi! StorageClass ctermfg=3 guifg=#fabd2f
" hi! TabLine ctermfg=8 ctermbg=10 guifg=#665c54 guibg=#3c3836
" hi! TabLineFill ctermfg=8 ctermbg=10 guifg=#665c54 guibg=#3c3836
" hi! TabLineSel ctermfg=2 ctermbg=10 guifg=#b8bb26 guibg=#3c3836
" hi! Tag ctermfg=3 guifg=#fabd2f
" hi! Title ctermfg=4 guifg=#83a598
" hi! Todo ctermfg=3 ctermbg=10 guifg=#fabd2f guibg=#3c3836
" hi! TooLong ctermfg=1 guifg=#fb4934
" hi! Type gui=NONE ctermfg=3 guifg=#fabd2f
" hi! Typedef ctermfg=3 guifg=#fabd2f
" hi! Underlined cterm=underline ctermfg=1 gui=underline guifg=#fb4934
" hi! VertSplit ctermfg=11 ctermbg=11 guifg=#504945 guibg=#504945
" hi! VisualNOS ctermfg=1 guifg=#fb4934
" hi! WarningMsg ctermfg=1 guifg=#fb4934
" hi! WildMenu ctermfg=1 ctermbg=11 guifg=#fb4934 guibg=#fabd2f
" hi! cOperator ctermfg=6 guifg=#8ec07c
" hi! cPreCondit ctermfg=5 guifg=#d3869b
" hi! Debug ctermfg=1 guifg=#fb4934
" hi! Define ctermfg=5 guifg=#d3869b
" hi! Delimiter ctermfg=14 guifg=#d65d0e
" hi! DiffAdd ctermfg=2 ctermbg=10 guifg=#b8bb26 guibg=#3c3836
" hi! DiffAdded ctermfg=2 ctermbg=0 guifg=#b8bb26 guibg=#1d2021
" hi! DiffChange ctermfg=8 ctermbg=10 guifg=#665c54 guibg=#3c3836
" hi! DiffDelete ctermfg=1 ctermbg=10 gui=NONE guifg=#fb4934 guibg=#3c3836
" hi! DiffFile ctermfg=1 ctermbg=0 guifg=#fb4934 guibg=#1d2021
" hi! DiffLine ctermfg=4 ctermbg=0 guifg=#83a598 guibg=#1d2021
" hi! DiffNewFile ctermfg=2 ctermbg=0 guifg=#b8bb26 guibg=#1d2021
" hi! DiffRemoved ctermfg=1 ctermbg=0 guifg=#fb4934 guibg=#1d2021
" hi! DiffText cterm=NONE ctermfg=4 ctermbg=10 gui=NONE guifg=#83a598 guibg=#3c3836
" hi! Directory ctermfg=4 guifg=#83a598
" hi! Error ctermfg=0 ctermbg=1 guifg=#1d2021 guibg=#fb4934
" hi! ErrorMsg ctermfg=1 ctermbg=0 guifg=#fb4934 guibg=#1d2021
" hi! Exception ctermfg=1 guifg=#fb4934
" hi! Float ctermfg=9 guifg=#fe8019
" hi! Function ctermfg=4 guifg=#83a598
" hi! clear Italic
" hi! clear NormalNC
" hi! clear deniteConcealedMark
" hi! clear deniteSource_buffer
" hi! clear deniteSource_file_mru
" hi! clear luaBlock
" hi! clear luaElseifThen
" hi! clear luaFunctionBlock
" hi! clear luaIfThen
" hi! clear luaInnerComment
" hi! clear luaLoopBlock
" hi! clear luaParen
" hi! clear luaTableBlock
" hi! clear luaThenEnd
" hi! clear neosnippetConcealExpandSnippets
" hi! clear nvimAutoEvent
" hi! clear nvimHLGroup
" hi! clear nvimMap
" hi! clear nvimUnmap
" hi! clear perlAutoload
" hi! clear perlBraces
" hi! clear perlFakeGroup
" hi! clear perlFiledescStatementComma
" hi! clear perlFiledescStatementNocomma
" hi! clear perlFormat
" hi! clear perlPackageConst
" hi! clear perlStatementIndirObjWrap
" hi! clear perlSync
" hi! clear perlSyncPOD
" hi! clear perlVarBlock
" hi! clear perlVarBlock2
" hi! clear perlVarMember
" hi! clear podBold
" hi! clear podBoldAlternativeDelim
" hi! clear podBoldAlternativeDelimOpen
" hi! clear podBoldItalic
" hi! clear podBoldOpen
" hi! clear podIndexAlternativeDelimOpen
" hi! clear podIndexOpen
" hi! clear podItalic
" hi! clear podItalicAlternativeDelim
" hi! clear podItalicAlternativeDelimOpen
" hi! clear podItalicBold
" hi! clear podItalicOpen
" hi! clear podNoSpaceAlternativeDelimOpen
" hi! clear podNoSpaceOpen
" hi! clear pythonAttribute
" hi! clear pythonMatrixMultiply
" hi! clear pythonSpaceError
" hi! clear pythonSync
" hi! clear rubyAliasDeclaration
" hi! clear rubyAliasDeclaration2
" hi! clear rubyArrayDelimiter
" hi! clear rubyArrayLiteral
" hi! clear rubyBlock
" hi! clear rubyBlockArgument
" hi! clear rubyBlockExpression
" hi! clear rubyBlockParameterList
" hi! clear rubyCaseExpression
" hi! clear rubyClassDeclaration
" hi! clear rubyConditionalExpression
" hi! clear rubyCurlyBlock
" hi! clear rubyCurlyBlockDelimiter
" hi! clear rubyDelimiterEscape
" hi! clear rubyDoBlock
" hi! clear rubyHeredocStart
" hi! clear rubyInterpolation
" hi! clear rubyKeywordAsMethod
" hi! clear rubyLineContinuation
" hi! clear rubyLocalVariableOrMethod
" hi! clear rubyMethodBlock
" hi! clear rubyMethodDeclaration
" hi! clear rubyModuleDeclaration
" hi! clear rubyMultilineComment
" hi! clear rubyNestedAngleBrackets
" hi! clear rubyNestedCurlyBraces
" hi! clear rubyNestedParentheses
" hi! clear rubyNestedSquareBrackets
" hi! clear rubyOptionalDoLine
" hi! clear rubyRegexpBrackets
" hi! clear rubyRegexpParens
" hi! clear rubyRepeatExpression
" hi! clear vimAuSyntax
" hi! clear vimAugroup
" hi! clear vimAugroupSyncA
" hi! clear vimAutoCmdSfxList
" hi! clear vimAutoCmdSpace
" hi! clear vimAutoEventList
" hi! clear vimClusterName
" hi! clear vimCmdSep
" hi! clear vimCollClass
" hi! clear vimCollection
" hi! clear vimCommentTitleLeader
" hi! clear vimEcho
" hi! clear vimEscapeBrace
" hi! clear vimExecute
" hi! clear vimExtCmd
" hi! clear vimFiletype
" hi! clear vimFilter
" hi! clear vimFoldCatch
" hi! clear vimFoldElse
" hi! clear vimFoldElseIf
" hi! clear vimFoldFinally
" hi! clear vimFoldFor
" hi! clear vimFoldIf
" hi! clear vimFoldIfContainer
" hi! clear vimFoldTry
" hi! clear vimFoldTryContainer
" hi! clear vimFoldWhile
" hi! clear vimFuncBlank
" hi! clear vimFuncBody
" hi! clear vimFunction
" hi! clear vimGlobal
" hi! clear vimGroupList
" hi! clear vimHiBang
" hi! clear vimHiCtermColor
" hi! clear vimHiFontname
" hi! clear vimHiGuiFontname
" hi! clear vimHiKeyList
" hi! clear vimHiLink
" hi! clear vimHiTermcap
" hi! clear vimIf
" hi! clear vimIsCommand
" hi! clear vimIskList
" hi! clear vimLuaRegion
" hi! clear vimMapLhs
" hi! clear vimMapRhs
" hi! clear vimMapRhsExtend
" hi! clear vimMenuBang
" hi! clear vimMenuMap
" hi! clear vimMenuPriority
" hi! clear vimMenuRhs
" hi! clear vimMzSchemeRegion
" hi! clear vimNormCmds
" hi! clear vimOnlyCommand
" hi! clear vimOnlyHLGroup
" hi! clear vimOnlyOption
" hi! clear vimOperParen
" hi! clear vimPatRegion
" hi! clear vimPerlRegion
" hi! clear vimPythonRegion
" hi! clear vimRegion
" hi! clear vimRubyRegion
" hi! clear vimSet
" hi! clear vimSetEqual
" hi! clear vimStdPlugin
" hi! clear vimSubstPat
" hi! clear vimSubstRange
" hi! clear vimSubstRep
" hi! clear vimSubstRep4
" hi! clear vimSynKeyRegion
" hi! clear vimSynLine
" hi! clear vimSynMatchRegion
" hi! clear vimSynMtchCchar
" hi! clear vimSynMtchGroup
" hi! clear vimSynPatMod
" hi! clear vimSynRegion
" hi! clear vimSyncLinebreak
" hi! clear vimSyncLinecont
" hi! clear vimSyncLines
" hi! clear vimSyncMatch
" hi! clear vimSyncRegion
" hi! clear vimTclRegion
" hi! clear vimTermOption
" hi! clear vimUserCmd
" hi! clear zshBrackets
" hi! clear zshHereDocEndSync
" hi! clear zshHereDocSync
" hi! clear zshParentheses
" hi! csAttribute ctermfg=3 guifg=#fabd2f
" hi! csClass ctermfg=3 guifg=#fabd2f
" hi! csContextualStatement ctermfg=5 guifg=#d3869b
" hi! csModifier ctermfg=5 guifg=#d3869b
" hi! csNewDecleration ctermfg=1 guifg=#fb4934
" hi! csType ctermfg=1 guifg=#fb4934
" hi! csUnspecifiedStatement ctermfg=4 guifg=#83a598
" hi! cssBraces ctermfg=7 guifg=#d5c4a1
" hi! cssClassName ctermfg=5 guifg=#d3869b
" hi! cssColor ctermfg=6 guifg=#8ec07c
" hi! gitcommitBranch cterm=NONE ctermfg=9 gui=NONE guifg=#fe8019
" hi! gitcommitComment ctermfg=8 guifg=#665c54
" hi! gitcommitDiscarded ctermfg=8 guifg=#665c54
" hi! gitcommitDiscardedFile cterm=NONE ctermfg=1 gui=NONE guifg=#fb4934
" hi! gitcommitDiscardedType ctermfg=4 guifg=#83a598
" hi! gitcommitHeader ctermfg=5 guifg=#d3869b
" hi! gitcommitOverflow ctermfg=1 guifg=#fb4934
" hi! gitcommitSelected ctermfg=8 guifg=#665c54
" hi! gitcommitSelectedFile cterm=NONE ctermfg=2 gui=NONE guifg=#b8bb26
" hi! gitcommitSelectedType ctermfg=4 guifg=#83a598
" hi! gitcommitSummary ctermfg=2 guifg=#b8bb26
" hi! gitcommitUnmergedFile cterm=NONE ctermfg=1 gui=NONE guifg=#fb4934
" hi! gitcommitUnmergedType ctermfg=4 guifg=#83a598
" hi! gitcommitUntracked ctermfg=8 guifg=#665c54
" hi! gitcommitUntrackedFile ctermfg=3 guifg=#fabd2f
" hi! htmlBold ctermfg=3 guifg=#fabd2f
" hi! htmlEndTag ctermfg=7 guifg=#d5c4a1
" hi! htmlItalic ctermfg=5 guifg=#d3869b
" hi! htmlTag ctermfg=7 guifg=#d5c4a1
" hi! javaScript ctermfg=7 guifg=#d5c4a1
" hi! javaScriptBraces ctermfg=7 guifg=#d5c4a1
" hi! javaScriptNumber ctermfg=9 guifg=#fe8019
" hi! jsBuiltins ctermfg=3 guifg=#fabd2f
" hi! jsClassDefinition ctermfg=3 guifg=#fabd2f
" hi! jsClassFuncName ctermfg=4 guifg=#83a598
" hi! jsClassMethodType ctermfg=5 guifg=#d3869b
" hi! jsExceptions ctermfg=3 guifg=#fabd2f
" hi! jsFuncCall ctermfg=4 guifg=#83a598
" hi! jsFuncName ctermfg=4 guifg=#83a598
" hi! jsFunction ctermfg=5 guifg=#d3869b
" hi! jsGlobalNodeObjects ctermfg=3 guifg=#fabd2f
" hi! jsGlobalObjects ctermfg=3 guifg=#fabd2f
" hi! jsOperator ctermfg=4 guifg=#83a598
" hi! jsRegexpString ctermfg=6 guifg=#8ec07c
" hi! jsReturn ctermfg=5 guifg=#d3869b
" hi! jsStatement ctermfg=5 guifg=#d3869b
" hi! jsThis ctermfg=1 guifg=#fb4934
" hi! link deniteMode ModeMsg
" hi! link deniteSelectedLine Statement
" hi! link deniteSourceLine_buffer Type
" hi! link deniteSourceLine_file_mru Type
" hi! link deniteSource_buffer_Info PreProc
" hi! link deniteSource_buffer_Modified Statement
" hi! link deniteSource_buffer_Name Function
" hi! link deniteSource_buffer_NoFile Function
" hi! link deniteSource_buffer_Prefix Constant
" hi! link deniteSource_buffer_Time Statement
" hi! link deniteStatusLineNumber LineNr
" hi! link deniteStatusLinePath Comment
" hi! link luaBraceError Error
" hi! link luaComment Comment
" hi! link luaCond Conditional
" hi! link luaConstant Constant
" hi! link luaElse Conditional
" hi! link luaError Error
" hi! link luaFor Repeat
" hi! link luaFunc Identifier
" hi! link luaFunction Function
" hi! link luaIn Operator
" hi! link luaLabel Label
" hi! link luaNumber Number
" hi! link luaOperator Operator
" hi! link luaParenError Error
" hi! link luaRepeat Repeat
" hi! link luaSpecial SpecialChar
" hi! link luaStatement Statement
" hi! link luaString String
" hi! link luaString2 String
" hi! link luaTable Structure
" hi! link luaTodo Todo
" hi! link neosnippetExpandSnippets Special
" hi! link perlAnglesDQ perlString
" hi! link perlAnglesSQ perlString
" hi! link perlArrow perlIdentifier
" hi! link perlBracesDQ perlString
" hi! link perlBracesSQ perlString
" hi! link perlBracketsDQ perlString
" hi! link perlBracketsSQ perlString
" hi! link perlCharacter Character
" hi! link perlComment Comment
" hi! link perlConditional Conditional
" hi! link perlControl PreProc
" hi! link perlDATA perlComment
" hi! link perlElseIfError Error
" hi! link perlFiledescRead perlIdentifier
" hi! link perlFiledescStatement perlIdentifier
" hi! link perlFloat Float
" hi! link perlFormatField perlString
" hi! link perlFormatName perlIdentifier
" hi! link perlFunction Keyword
" hi! link perlFunctionName perlIdentifier
" hi! link perlFunctionPRef perlType
" hi! link perlHereDoc perlString
" hi! link perlIdentifier Identifier
" hi! link perlInclude Include
" hi! link perlLabel Label
" hi! link perlList perlStatement
" hi! link perlMatch perlString
" hi! link perlMatchStartEnd perlStatement
" hi! link perlMethod perlIdentifier
" hi! link perlMisc perlStatement
" hi! link perlNotEmptyLine Error
" hi! link perlNumber Number
" hi! link perlOperator Operator
" hi! link perlPOD perlComment
" hi! link perlPackageDecl perlType
" hi! link perlPackageRef perlType
" hi! link perlParensDQ perlString
" hi! link perlParensSQ perlString
" hi! link perlQQ perlString
" hi! link perlRepeat Repeat
" hi! link perlSharpBang PreProc
" hi! link perlShellCommand perlString
" hi! link perlSpecial Special
" hi! link perlSpecialAscii perlSpecial
" hi! link perlSpecialDollar perlSpecial
" hi! link perlSpecialMatch perlSpecial
" hi! link perlSpecialString perlSpecial
" hi! link perlSpecialStringU perlSpecial
" hi! link perlSpecialStringU2 perlString
" hi! link perlStatement Statement
" hi! link perlStatementControl perlStatement
" hi! link perlStatementFiledesc perlStatement
" hi! link perlStatementFiles perlStatement
" hi! link perlStatementFlow perlStatement
" hi! link perlStatementHash perlStatement
" hi! link perlStatementIOfunc perlStatement
" hi! link perlStatementIPC perlStatement
" hi! link perlStatementInclude perlStatement
" hi! link perlStatementIndirObj perlStatement
" hi! link perlStatementList perlStatement
" hi! link perlStatementMisc perlStatement
" hi! link perlStatementNetwork perlStatement
" hi! link perlStatementNumeric perlStatement
" hi! link perlStatementPackage perlStatement
" hi! link perlStatementProc perlStatement
" hi! link perlStatementPword perlStatement
" hi! link perlStatementRegexp perlStatement
" hi! link perlStatementScalar perlStatement
" hi! link perlStatementSocket perlStatement
" hi! link perlStatementStorage perlStatement
" hi! link perlStatementTime perlStatement
" hi! link perlStatementVector perlStatement
" hi! link perlStorageClass perlType
" hi! link perlString String
" hi! link perlStringStartEnd perlString
" hi! link perlStringUnexpanded perlString
" hi! link perlSubAttributes PreProc
" hi! link perlSubAttributesCont perlSubAttributes
" hi! link perlSubError Error
" hi! link perlSubName Function
" hi! link perlSubPrototype Type
" hi! link perlSubPrototypeError Error
" hi! link perlSubstitutionGQQ perlString
" hi! link perlSubstitutionSQ perlString
" hi! link perlTodo Todo
" hi! link perlTranslationGQ perlString
" hi! link perlType Type
" hi! link perlVStringV perlStringStartEnd
" hi! link perlVarNotInMatches perlIdentifier
" hi! link perlVarPlain perlIdentifier
" hi! link perlVarPlain2 perlIdentifier
" hi! link perlVarSimpleMember perlIdentifier
" hi! link perlVarSimpleMemberName perlString
" hi! link perlVarSlash perlIdentifier
" hi! link podCmdText String
" hi! link podCommand Statement
" hi! link podEscape String
" hi! link podEscape2 Number
" hi! link podForKeywd Identifier
" hi! link podFormat Identifier
" hi! link podOverIndent Number
" hi! link podSpecial Identifier
" hi! link podVerbatimLine PreProc
" hi! link pythonAsync Statement
" hi! link pythonBuiltin Function
" hi! link pythonComment Comment
" hi! link pythonConditional Conditional
" hi! link pythonDecorator Define
" hi! link pythonDecoratorName Function
" hi! link pythonDoctest Special
" hi! link pythonDoctestValue Define
" hi! link pythonEscape Special
" hi! link pythonException Exception
" hi! link pythonExceptions Structure
" hi! link pythonFunction Function
" hi! link pythonNumber Number
" hi! link pythonQuotes String
" hi! link pythonRawString String
" hi! link pythonString String
" hi! link pythonTodo Todo
" hi! link pythonTripleQuotes pythonQuotes
" hi! link rubyASCIICode Character
" hi! link rubyAccess Statement
" hi! link rubyBeginEnd Statement
" hi! link rubyBlockParameter rubyIdentifier
" hi! link rubyBoolean Boolean
" hi! link rubyCapitalizedMethod rubyLocalVariableOrMethod
" hi! link rubyClass rubyDefine
" hi! link rubyClassVariable rubyIdentifier
" hi! link rubyComment Comment
" hi! link rubyConditional Conditional
" hi! link rubyConditionalModifier rubyConditional
" hi! link rubyControl Statement
" hi! link rubyData Comment
" hi! link rubyDataDirective Delimiter
" hi! link rubyDefine Define
" hi! link rubyDocumentation Comment
" hi! link rubyError Error
" hi! link rubyEval Statement
" hi! link rubyException Exception
" hi! link rubyExceptional rubyConditional
" hi! link rubyFloat Float
" hi! link rubyFunction Function
" hi! link rubyGlobalVariable rubyIdentifier
" hi! link rubyHeredoc rubyString
" hi! link rubyIdentifier Identifier
" hi! link rubyInclude Include
" hi! link rubyInstanceVariable rubyIdentifier
" hi! link rubyInteger Number
" hi! link rubyInvalidVariable Error
" hi! link rubyKeyword Keyword
" hi! link rubyMethodExceptional rubyDefine
" hi! link rubyModule rubyDefine
" hi! link rubyNoInterpolation rubyString
" hi! link rubyOperator Operator
" hi! link rubyOptionalDo rubyRepeat
" hi! link rubyPredefinedConstant rubyPredefinedIdentifier
" hi! link rubyPredefinedIdentifier rubyIdentifier
" hi! link rubyPredefinedVariable rubyPredefinedIdentifier
" hi! link rubyPseudoVariable Constant
" hi! link rubyQuoteEscape rubyStringEscape
" hi! link rubyRegexpAnchor rubyRegexpSpecial
" hi! link rubyRegexpCharClass rubyRegexpSpecial
" hi! link rubyRegexpComment Comment
" hi! link rubyRegexpDelimiter rubyStringDelimiter
" hi! link rubyRegexpDot rubyRegexpCharClass
" hi! link rubyRegexpEscape rubyRegexpSpecial
" hi! link rubyRegexpQuantifier rubyRegexpSpecial
" hi! link rubyRegexpSpecial Special
" hi! link rubyRepeat Repeat
" hi! link rubyRepeatModifier rubyRepeat
" hi! link rubySharpBang PreProc
" hi! link rubySpaceError rubyError
" hi! link rubyString String
" hi! link rubyStringEscape Special
" hi! link rubySymbolDelimiter rubySymbol
" hi! link rubyTodo Todo
" hi! link vimAbb vimCommand
" hi! link vimAddress vimMark
" hi! link vimAuHighlight vimHighlight
" hi! link vimAugroupError vimError
" hi! link vimAugroupKey vimCommand
" hi! link vimAutoCmd vimCommand
" hi! link vimAutoCmdOpt vimOption
" hi! link vimAutoEvent Type
" hi! link vimAutoSet vimCommand
" hi! link vimBehave vimCommand
" hi! link vimBehaveError vimError
" hi! link vimBehaveModel vimBehave
" hi! link vimBracket Delimiter
" hi! link vimBufnrWarn vimWarn
" hi! link vimCmplxRepeat SpecialChar
" hi! link vimCollClassErr vimError
" hi! link vimCommand Statement
" hi! link vimComment Comment
" hi! link vimCommentString vimString
" hi! link vimCommentTitle PreProc
" hi! link vimCondHL vimCommand
" hi! link vimContinue Special
" hi! link vimCtrlChar SpecialChar
" hi! link vimEchoHL vimCommand
" hi! link vimEchoHLNone vimGroup
" hi! link vimElseIfErr Error
" hi! link vimElseif vimCondHL
" hi! link vimEmbedError vimError
" hi! link vimEnvvar PreProc
" hi! link vimErrSetting vimError
" hi! link vimError Error
" hi! link vimFBVar vimVar
" hi! link vimFTCmd vimCommand
" hi! link vimFTError vimError
" hi! link vimFTOption vimSynType
" hi! link vimFgBgAttrib vimHiAttrib
" hi! link vimFold Folded
" hi! link vimFunc vimError
" hi! link vimFuncKey vimCommand
" hi! link vimFuncName Function
" hi! link vimFuncSID Special
" hi! link vimFuncVar Identifier
" hi! link vimFunctionError vimError
" hi! link vimGroup Type
" hi! link vimGroupAdd vimSynOption
" hi! link vimGroupName vimGroup
" hi! link vimGroupRem vimSynOption
" hi! link vimGroupSpecial Special
" hi! link vimHLGroup vimGroup
" hi! link vimHLMod PreProc
" hi! link vimHiAttrib PreProc
" hi! link vimHiAttribList vimError
" hi! link vimHiCTerm vimHiTerm
" hi! link vimHiClear vimHighlight
" hi! link vimHiCtermError vimError
" hi! link vimHiCtermFgBg vimHiTerm
" hi! link vimHiGroup vimGroupName
" hi! link vimHiGui vimHiTerm
" hi! link vimHiGuiFgBg vimHiTerm
" hi! link vimHiGuiFont vimHiTerm
" hi! link vimHiGuiRgb vimNumber
" hi! link vimHiKeyError vimError
" hi! link vimHiNmbr Number
" hi! link vimHiStartStop vimHiTerm
" hi! link vimHiTerm Type
" hi! link vimHighlight vimCommand
" hi! link vimInsert vimString
" hi! link vimIskSep Delimiter
" hi! link vimKeyCode vimSpecFile
" hi! link vimKeyCodeError vimError
" hi! link vimKeyword Statement
" hi! link vimLet vimCommand
" hi! link vimLineComment vimComment
" hi! link vimMap vimCommand
" hi! link vimMapBang vimCommand
" hi! link vimMapMod vimBracket
" hi! link vimMapModErr vimError
" hi! link vimMapModKey vimFuncSID
" hi! link vimMark Number
" hi! link vimMarkNumber vimNumber
" hi! link vimMenuMod vimMapMod
" hi! link vimMenuName PreProc
" hi! link vimMenuNameMore vimMenuName
" hi! link vimMtchComment vimComment
" hi! link vimNorm vimCommand
" hi! link vimNotFunc vimCommand
" hi! link vimNotPatSep vimString
" hi! link vimNotation Special
" hi! link vimNumber Number
" hi! link vimOper Operator
" hi! link vimOperError Error
" hi! link vimOption PreProc
" hi! link vimParenSep Delimiter
" hi! link vimPatSep SpecialChar
" hi! link vimPatSepErr vimPatSep
" hi! link vimPatSepR vimPatSep
" hi! link vimPatSepZ vimPatSep
" hi! link vimPatSepZone vimString
" hi! link vimPattern Type
" hi! link vimPlainMark vimMark
" hi! link vimPlainRegister vimRegister
" hi! link vimRegister SpecialChar
" hi! link vimScriptDelim Comment
" hi! link vimSearch vimString
" hi! link vimSearchDelim Statement
" hi! link vimSep Delimiter
" hi! link vimSetMod vimOption
" hi! link vimSetSep Statement
" hi! link vimSetString vimString
" hi! link vimSpecFile Identifier
" hi! link vimSpecFileMod vimSpecFile
" hi! link vimSpecial Type
" hi! link vimStatement Statement
" hi! link vimString String
" hi! link vimStringCont vimString
" hi! link vimSubst vimCommand
" hi! link vimSubst1 vimSubst
" hi! link vimSubstDelim Delimiter
" hi! link vimSubstFlagErr vimError
" hi! link vimSubstFlags Special
" hi! link vimSubstSubstr SpecialChar
" hi! link vimSubstTwoBS vimString
" hi! link vimSynCase Type
" hi! link vimSynCaseError vimError
" hi! link vimSynContains vimSynOption
" hi! link vimSynError Error
" hi! link vimSynKeyContainedin vimSynContains
" hi! link vimSynKeyOpt vimSynOption
" hi! link vimSynMtchGrp vimSynOption
" hi! link vimSynMtchOpt vimSynOption
" hi! link vimSynNextgroup vimSynOption
" hi! link vimSynNotPatRange vimSynRegPat
" hi! link vimSynOption Special
" hi! link vimSynPatRange vimString
" hi! link vimSynReg Type
" hi! link vimSynRegOpt vimSynOption
" hi! link vimSynRegPat vimString
" hi! link vimSynType vimSpecial
" hi! link vimSyncC Type
" hi! link vimSyncError Error
" hi! link vimSyncGroup vimGroupName
" hi! link vimSyncGroupName vimGroupName
" hi! link vimSyncKey Type
" hi! link vimSyncNone Type
" hi! link vimSyntax vimCommand
" hi! link vimTodo Todo
" hi! link vimUnmap vimMap
" hi! link vimUserAttrb vimSpecial
" hi! link vimUserAttrbCmplt vimSpecial
" hi! link vimUserAttrbCmpltFunc Special
" hi! link vimUserAttrbError Error
" hi! link vimUserAttrbKey vimOption
" hi! link vimUserCmdError Error
" hi! link vimUserCommand vimCommand
" hi! link vimUserFunc Normal
" hi! link vimVar Identifier
" hi! link vimWarn WarningMsg
" hi! link zshCommands Keyword
" hi! link zshComment Comment
" hi! link zshConditional Conditional
" hi! link zshDelimiter Keyword
" hi! link zshDeref zshDereferencing
" hi! link zshDereferencing PreProc
" hi! link zshException Exception
" hi! link zshFunction NONE
" hi! link zshHereDoc String
" hi! link zshJobSpec Special
" hi! link zshKSHFunction zshFunction
" hi! link zshKeyword Keyword
" hi! link zshLongDeref zshDereferencing
" hi! link zshMathSubst zshSubst
" hi! link zshNumber Number
" hi! link zshOldSubst zshSubst
" hi! link zshOperator NONE
" hi! link zshOptions Constant
" hi! link zshPOSIXString zshString
" hi! link zshPreProc PreProc
" hi! link zshPrecommand Special
" hi! link zshQuoted SpecialChar
" hi! link zshRedir Operator
" hi! link zshRepeat Repeat
" hi! link zshShortDeref zshDereferencing
" hi! link zshString String
" hi! link zshStringDelimiter zshString
" hi! link zshSubst PreProc
" hi! link zshSubstDelim zshSubst
" hi! link zshSwitches Special
" hi! link zshTodo Todo
" hi! link zshTypes Type
" hi! link zshVariable NONE
" hi! link zshVariableDef zshVariable
" hi! mailEmail ctermfg=4 guifg=#83a598
" hi! mailQuoted1 ctermfg=3 guifg=#fabd2f
" hi! mailQuoted2 ctermfg=2 guifg=#b8bb26
" hi! mailQuoted3 ctermfg=5 guifg=#d3869b
" hi! mailQuoted4 ctermfg=6 guifg=#8ec07c
" hi! mailQuoted5 ctermfg=4 guifg=#83a598
" hi! mailQuoted6 ctermfg=3 guifg=#fabd2f
" hi! mailURL ctermfg=4 guifg=#83a598
" hi! markdownCode ctermfg=2 guifg=#b8bb26
" hi! markdownCodeBlock ctermfg=2 guifg=#b8bb26
" hi! markdownError ctermfg=7 ctermbg=0 guifg=#d5c4a1 guibg=#1d2021
" hi! markdownHeadingDelimiter ctermfg=4 guifg=#83a598
" hi! phpComparison ctermfg=7 guifg=#d5c4a1
" hi! phpMemberSelector ctermfg=7 guifg=#d5c4a1
" hi! phpParent ctermfg=7 guifg=#d5c4a1
" hi! pythonInclude ctermfg=5 guifg=#d3869b
" hi! pythonOperator ctermfg=5 guifg=#d3869b
" hi! pythonRepeat ctermfg=5 guifg=#d3869b
" hi! pythonStatement ctermfg=5 guifg=#d3869b
" hi! rubyAttribute ctermfg=4 guifg=#83a598
" hi! rubyConstant ctermfg=3 guifg=#fabd2f
" hi! rubyInterpolationDelimiter ctermfg=14 guifg=#d65d0e
" hi! rubyRegexp ctermfg=6 guifg=#8ec07c
" hi! rubyStringDelimiter ctermfg=2 guifg=#b8bb26
" hi! rubySymbol ctermfg=2 guifg=#b8bb26
" hi! sassClassChar ctermfg=9 guifg=#fe8019
" hi! sassInclude ctermfg=5 guifg=#d3869b
" hi! sassMixinName ctermfg=4 guifg=#83a598
" hi! sassMixing ctermfg=5 guifg=#d3869b
" hi! sassidChar ctermfg=1 guifg=#fb4934
" "" reference
" " hi! LightlineMiddle_normal  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" " hi! LightlineLeft_normal_0  ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
" " hi! LightlineLeft_normal_0_1  ctermfg=142 ctermbg=241 guifg=#b8bb26 guibg=#665c54
" " hi! LightlineLeft_normal_0_tabsel  ctermfg=142 ctermbg=235 guifg=#b8bb26 guibg=#282828
" " hi! LightlineLeft_normal_1  ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
" " hi! LightlineLeft_normal_1_2  ctermfg=241 ctermbg=237 guifg=#665c54 guibg=#3c3836
" " hi! LightlineRight_normal_0_tabsel  ctermfg=243 ctermbg=235 guifg=#7c6f64 guibg=#282828
" " hi! LightlineRight_normal_1_tabsel  ctermfg=243 ctermbg=235 guifg=#7c6f64 guibg=#282828
" " hi! LightlineRight_normal_0  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" " hi! LightlineRight_normal_0_1  ctermfg=243 ctermbg=243 guifg=#7c6f64 guibg=#7c6f64
" " hi! LightlineRight_normal_1  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" " hi! LightlineRight_normal_1_2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" " hi! LightlineRight_normal_2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" " hi! LightlineRight_normal_2_3  ctermfg=237 ctermbg=237 guifg=#3c3836 guibg=#3c3836

" "   statusline=%{lightline#link()}
" "   %#LightlineLeft_active_0#
" "   %( %{lightline#mode()} %)
" "   %{(&paste)?"|":""}
" "   %( %{&paste?"PASTE":""} %)
" "   %#LightlineLeft_active_0_1#
" "   %#LightlineLeft_active_1#
" "   %( %R %)
" "   %{(&readonly)&&(1||(&modified||!&modifiable))?"|":""}
" "   %( %t %)
" "   %{(&modified||!&modifiable)?"|":""}
" "   %( %M %)
" "   %#LightlineLeft_active_1_2#%
" "   #LightlineMiddle_active#
" "   %=
" "   %#LightlineRight_active_2_3#
" "   %#LightlineRight_active_2#
" "   %( %{&ff} %)
" "   %{1||1?"|":""}
" "   %( %{&fenc!=#""?&fenc:&enc} %)
" "   %{1?"|":""}
" "   %( %{&ft!=#""?&ft:"no ft"} %)
" "   %#LightlineRight_active_1_2#
" "   %#LightlineRight_active_1#
" "   %( %3p%% %)
" "   %#LightlineRight_active_0_1#
" "   %#LightlineRight_active_0#
" "   %( %3l:%-2v %)
" "
" " hi! LightlineLeft_normal_0  ctermfg=235 ctermbg=142 guifg=#282828 guibg=#b8bb26
" " hi! LightlineLeft_normal_1  ctermfg=245 ctermbg=241 guifg=#928374 guibg=#665c54
" " hi! LightlineMiddle_normal  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" " hi! LightlineRight_normal_2  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
" " hi! LightlineRight_normal_1  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
" " hi! LightlineRight_normal_0  ctermfg=235 ctermbg=243 guifg=#282828 guibg=#7c6f64
