set background=dark
if version > 580
	hi! clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256

let colors_name = "spg2-NoBold"


hi! clear Underlined
hi! clear GitGutterChangeInvisble
hi! clear Ignore
hi! clear NERDTreeLink
hi! clear NONE
hi! clear NormalNC
hi! clear VisualNC
hi! clear bashAdminStatement
hi! clear bashSpecialVariables
hi! clear bashStatement
hi! clear deniteConcealedMark
hi! clear deniteSource_buffer
hi! clear deniteSource_file_mru
hi! clear helpGraphic
hi! clear helpNormal
hi! clear kshSpecialVariables
hi! clear kshStatement
hi! clear luaBlock
hi! clear luaElseifThen
hi! clear luaFunctionBlock
hi! clear luaIfThen
hi! clear luaInnerComment
hi! clear luaLoopBlock
hi! clear luaParen
hi! clear luaTableBlock
hi! clear luaThenEnd
hi! clear nvimAutoEvent
hi! clear nvimHLGroup
hi! clear nvimMap
hi! clear nvimUnmap
hi! clear pandocTableStructre
hi! clear perlAutoload
hi! clear perlBraces
hi! clear perlFakeGroup
hi! clear perlFiledescStatementComma
hi! clear perlFiledescStatementNocomma
hi! clear perlFormat
hi! clear perlPackageConst
hi! clear perlStatementIndirObjWrap
hi! clear perlSync
hi! clear perlSyncPOD
hi! clear perlVarBlock
hi! clear perlVarBlock2
hi! clear perlVarMember
hi! clear podBold
hi! clear podBoldAlternativeDelim
hi! clear podBoldAlternativeDelimOpen
hi! clear podBoldItalic
hi! clear podBoldOpen
hi! clear podIndexAlternativeDelimOpen
hi! clear podIndexOpen
hi! clear podItalic
hi! clear podItalicAlternativeDelim
hi! clear podItalicAlternativeDelimOpen
hi! clear podItalicBold
hi! clear podItalicOpen
hi! clear podNoSpaceAlternativeDelimOpen
hi! clear podNoSpaceOpen
hi! clear pythonAttribute
hi! clear pythonMatrixMultiply
hi! clear pythonSync
hi! clear rubyAliasDeclaration
hi! clear rubyAliasDeclaration2
hi! clear rubyArrayDelimiter
hi! clear rubyArrayLiteral
hi! clear rubyBlock
hi! clear rubyBlockArgument
hi! clear rubyBlockExpression
hi! clear rubyBlockParameterList
hi! clear rubyCaseExpression
hi! clear rubyClassDeclaration
hi! clear rubyConditionalExpression
hi! clear rubyCurlyBlock
hi! clear rubyCurlyBlockDelimiter
hi! clear rubyDelimiterEscape
hi! clear rubyDoBlock
hi! clear rubyHeredocStart
hi! clear rubyInterpolation
hi! clear rubyKeywordAsMethod
hi! clear rubyLineContinuation
hi! clear rubyLocalVariableOrMethod
hi! clear rubyMethodBlock
hi! clear rubyMethodDeclaration
hi! clear rubyModuleDeclaration
hi! clear rubyMultilineComment
hi! clear rubyNestedAngleBrackets
hi! clear rubyNestedCurlyBraces
hi! clear rubyNestedParentheses
hi! clear rubyNestedSquareBrackets
hi! clear rubyOptionalDoLine
hi! clear rubyRegexpBrackets
hi! clear rubyRegexpParens
hi! clear rubyRepeatExpression
hi! clear shBkslshDblQuote
hi! clear shBkslshSnglQuote
hi! clear shCase
hi! clear shCaseEsac
hi! clear shCaseEsacSync
hi! clear shCaseExSingleQuote
hi! clear shCaseRange
hi! clear shCmdParenRegion
hi! clear shComma
hi! clear shCurlyIn
hi! clear shDblBrace
hi! clear shDblParen
hi! clear shDerefEscape
hi! clear shDerefLen
hi! clear shDerefOff
hi! clear shDerefPPSleft
hi! clear shDerefPPSright
hi! clear shDerefPSRleft
hi! clear shDerefPSRright
hi! clear shDerefPattern
hi! clear shDerefVarArray
hi! clear shDo
hi! clear shDoSync
hi! clear shExpr
hi! clear shFor
hi! clear shForSync
hi! clear shFunctionFour
hi! clear shFunctionOne
hi! clear shFunctionStart
hi! clear shFunctionThree
hi! clear shFunctionTwo
hi! clear shIf
hi! clear shIfSync
hi! clear shOK
hi! clear shSpecialVar
hi! clear shSubSh
hi! clear shTest
hi! clear shTouch
hi! clear shUntilSync
hi! clear shVarAssign
hi! clear shWhileSync
hi! clear vimAuSyntax
hi! clear vimAugroup
hi! clear vimAugroupSyncA
hi! clear vimAutoCmdSfxList
hi! clear vimAutoCmdSpace
hi! clear vimAutoEventList
hi! clear vimClusterName
hi! clear vimCollClass
hi! clear vimCollection
hi! clear vimCommentTitleLeader
hi! clear vimEcho
hi! clear vimEscapeBrace
hi! clear vimExecute
hi! clear vimExtCmd
hi! clear vimFiletype
hi! clear vimFilter
hi! clear vimFuncBlank
hi! clear vimFuncBody
hi! clear vimFunction
hi! clear vimGlobal
hi! clear vimGroupList
hi! clear vimHiBang
hi! clear vimHiCtermColor
hi! clear vimHiFontname
hi! clear vimHiGuiFontname
hi! clear vimHiKeyList
hi! clear vimHiTermcap
hi! clear vimIf
hi! clear vimIskList
hi! clear vimLuaRegion
hi! clear vimMapLhs
hi! clear vimMapRhs
hi! clear vimMapRhsExtend
hi! clear vimMenuBang
hi! clear vimMenuMap
hi! clear vimMenuPriority
hi! clear vimMenuRhs
hi! clear vimNormCmds
hi! clear vimOnlyCommand
hi! clear vimOnlyHLGroup
hi! clear vimOnlyOption
hi! clear vimOperParen
hi! clear vimPatRegion
hi! clear vimPerlRegion
hi! clear vimPythonRegion
hi! clear vimRegion
hi! clear vimRubyRegion
hi! clear vimStdPlugin
hi! clear vimSubstPat
hi! clear vimSubstRange
hi! clear vimSubstRep
hi! clear vimSubstRep4
hi! clear vimSynKeyRegion
hi! clear vimSynLine
hi! clear vimSynMatchRegion
hi! clear vimSynMtchCchar
hi! clear vimSynMtchGroup
hi! clear vimSynPatMod
hi! clear vimSynRegion
hi! clear vimSyncLinebreak
hi! clear vimSyncLinecont
hi! clear vimSyncLines
hi! clear vimSyncMatch
hi! clear vimSyncRegion
hi! clear vimTermOption
hi! clear vimUserCmd

hi! link                   pythonSpaceError NonText
hi! LightlineLeft_insert_0 ctermfg=234 ctermbg=124 guifg=#002b36 guibg=#dc322f
hi! ParenMatch             term=underline cterm=underline gui=underline ctermfg=1 ctermbg=NONE  guibg=NONE guifg=#ff91ec
hi! Search                 cterm=NONE gui=NONE ctermfg=8 ctermbg=2 guifg=#002b36 guibg=#009103
hi! CursorLineDenite       gui=undercurl cterm=underline ctermfg=5 guifg=NONE guisp=#ff1048
hi! CursorLine             ctermbg=0 guibg=#073642


hi! IncSearch                              cterm=standout ctermfg=9 gui=standout guifg=#cb4b16
hi! ColorColumn                            ctermbg=0 guibg=#073642
hi! CommandMode                            cterm=reverse ctermfg=5 ctermbg=15 gui=reverse guifg=#d33682 guibg=#fdf6e3
hi! Comment                                ctermfg=10 gui=italic guifg=#586e75
hi! ConId                                  ctermfg=3 guifg=#b58900
hi! Conceal                                ctermfg=4 guifg=#268bd2
hi! Constant                               ctermfg=6 guifg=#2aa198
hi! Cursor                                 ctermfg=15 ctermbg=4 guifg=#fdf6e3 guibg=#268bd2
hi! CursorColumn                           ctermbg=0 guibg=#073642
hi! CursorLineNr                           cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#839496 guibg=#073642
hi! DiffAdd                                ctermfg=2 ctermbg=0 guifg=#719e07 guibg=#073642 guisp=#719e07
hi! DiffChange                             ctermfg=3 ctermbg=0 guifg=#b58900 guibg=#073642 guisp=#b58900
hi! DiffDelete                             ctermfg=1 ctermbg=0 guifg=#dc322f guibg=#073642
hi! DiffText                               ctermfg=4 ctermbg=0 guifg=#268bd2 guibg=#073642 guisp=#268bd2
hi! Directory                              ctermfg=4 guifg=#268bd2
hi! ErrorMsg                               cterm=reverse ctermfg=1 ctermbg=15 gui=reverse guifg=#dc322f guibg=#fdf6e3
hi! FoldColumn                             ctermfg=12 ctermbg=0 guifg=#839496 guibg=#073642
hi! Folded                                 cterm=NONE ctermfg=12 ctermbg=0 gui=NONE guifg=#839496 guibg=#073642 guisp=#002b36
hi! GitGutterAddDefault                    ctermfg=2 ctermbg=0 guifg=#009900 guibg=#073642
hi! GitGutterAddInvisible                  ctermfg=0 ctermbg=0 guifg=bg guibg=#073642
hi! GitGutterChangeDefault                 ctermfg=3 ctermbg=0 guifg=#bbbb00 guibg=#073642
hi! GitGutterChangeInvisible               ctermfg=0 ctermbg=0 guifg=bg guibg=#073642
hi! GitGutterDeleteDefault                 ctermfg=1 ctermbg=0 guifg=#ff2222 guibg=#073642
hi! GitGutterDeleteInvisible               ctermfg=0 ctermbg=0 guifg=bg guibg=#073642
hi! Identifier                             ctermfg=4 guifg=#268bd2
hi! InsertMode                             cterm=reverse ctermfg=6 ctermbg=15 gui=reverse guifg=#2aa198 guibg=#fdf6e3
hi! LightlineLeft_command_0                ctermfg=234 ctermbg=33 guifg=#002b36 guibg=#268bd2
hi! LightlineLeft_command_0_1              ctermfg=33 ctermbg=240 guifg=#268bd2 guibg=#657b83
hi! LightlineLeft_command_0_tabsel         ctermfg=33 ctermbg=245 guifg=#268bd2 guibg=#93a1a1
hi! LightlineLeft_command_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_command_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_command_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_command_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_command_tabsel_0         ctermfg=245 ctermbg=33 guifg=#93a1a1 guibg=#268bd2
hi! LightlineLeft_command_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_command_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_command_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_inactive_0               ctermfg=244 ctermbg=235 guifg=#839496 guibg=#073642
hi! LightlineLeft_inactive_0_1             ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineLeft_inactive_0_tabsel        ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineLeft_inactive_tabsel          ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_inactive_tabsel_0        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_inactive_tabsel_1        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_inactive_tabsel_tabsel   ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_insert_0_1               ctermfg=64 ctermbg=240 guifg=#859900 guibg=#657b83
hi! LightlineLeft_insert_0_tabsel          ctermfg=64 ctermbg=245 guifg=#859900 guibg=#93a1a1
hi! LightlineLeft_insert_1                 ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_insert_1_2               ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_insert_1_tabsel          ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_insert_tabsel            ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_insert_tabsel_0          ctermfg=245 ctermbg=64 guifg=#93a1a1 guibg=#859900
hi! LightlineLeft_insert_tabsel_1          ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_insert_tabsel_2          ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_insert_tabsel_tabsel     ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_normal_0                 ctermfg=234 ctermbg=33 guifg=#002b36 guibg=#268bd2
hi! LightlineLeft_normal_0_1               ctermfg=33 ctermbg=240 guifg=#268bd2 guibg=#657b83
hi! LightlineLeft_normal_0_tabsel          ctermfg=33 ctermbg=245 guifg=#268bd2 guibg=#93a1a1
hi! LightlineLeft_normal_1                 ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_normal_1_2               ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_normal_1_tabsel          ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_normal_tabsel            ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_normal_tabsel_0          ctermfg=245 ctermbg=33 guifg=#93a1a1 guibg=#268bd2
hi! LightlineLeft_normal_tabsel_1          ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_normal_tabsel_2          ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_normal_tabsel_tabsel     ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_replace_0                ctermfg=234 ctermbg=124 guifg=#002b36 guibg=#dc322f
hi! LightlineLeft_replace_0_1              ctermfg=124 ctermbg=240 guifg=#dc322f guibg=#657b83
hi! LightlineLeft_replace_0_tabsel         ctermfg=124 ctermbg=245 guifg=#dc322f guibg=#93a1a1
hi! LightlineLeft_replace_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_replace_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_replace_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_replace_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_replace_tabsel_0         ctermfg=245 ctermbg=124 guifg=#93a1a1 guibg=#dc322f
hi! LightlineLeft_replace_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_replace_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_replace_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_select_0                 ctermfg=234 ctermbg=125 guifg=#002b36 guibg=#d33682
hi! LightlineLeft_select_0_1               ctermfg=125 ctermbg=240 guifg=#d33682 guibg=#657b83
hi! LightlineLeft_select_0_tabsel          ctermfg=125 ctermbg=245 guifg=#d33682 guibg=#93a1a1
hi! LightlineLeft_select_1                 ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_select_1_2               ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_select_1_tabsel          ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_select_tabsel            ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_select_tabsel_0          ctermfg=245 ctermbg=125 guifg=#93a1a1 guibg=#d33682
hi! LightlineLeft_select_tabsel_1          ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_select_tabsel_2          ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_select_tabsel_tabsel     ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_tabline_0                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_tabline_0_1              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_tabline_0_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_tabline_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_tabline_tabsel_0         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_tabline_tabsel_1         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_tabline_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_terminal_0               ctermfg=234 ctermbg=64 guifg=#002b36 guibg=#859900
hi! LightlineLeft_terminal_0_1             ctermfg=64 ctermbg=240 guifg=#859900 guibg=#657b83
hi! LightlineLeft_terminal_0_tabsel        ctermfg=64 ctermbg=245 guifg=#859900 guibg=#93a1a1
hi! LightlineLeft_terminal_1               ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_terminal_1_2             ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_terminal_1_tabsel        ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_terminal_tabsel          ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_terminal_tabsel_0        ctermfg=245 ctermbg=64 guifg=#93a1a1 guibg=#859900
hi! LightlineLeft_terminal_tabsel_1        ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_terminal_tabsel_2        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_terminal_tabsel_tabsel   ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineLeft_visual_0                 ctermfg=234 ctermbg=125 guifg=#002b36 guibg=#d33682
hi! LightlineLeft_visual_0_1               ctermfg=125 ctermbg=240 guifg=#d33682 guibg=#657b83
hi! LightlineLeft_visual_0_tabsel          ctermfg=125 ctermbg=245 guifg=#d33682 guibg=#93a1a1
hi! LightlineLeft_visual_1                 ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineLeft_visual_1_2               ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineLeft_visual_1_tabsel          ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineLeft_visual_tabsel            ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineLeft_visual_tabsel_0          ctermfg=245 ctermbg=125 guifg=#93a1a1 guibg=#d33682
hi! LightlineLeft_visual_tabsel_1          ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineLeft_visual_tabsel_2          ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineLeft_visual_tabsel_tabsel     ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineMiddle_command                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_inactive               ctermfg=239 ctermbg=235 guifg=#586e75 guibg=#073642
hi! LightlineMiddle_insert                 ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_normal                 ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_replace                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_select                 ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_tabline                ctermfg=244 ctermbg=235 guifg=#839496 guibg=#073642
hi! LightlineMiddle_terminal               ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineMiddle_visual                 ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_command_0               ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_command_0_1             ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_command_0_tabsel        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_command_1               ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_command_1_2             ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_command_1_tabsel        ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_command_2               ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_command_2_3             ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_command_2_tabsel        ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_command_tabsel          ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_command_tabsel_0        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_command_tabsel_1        ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_command_tabsel_2        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_command_tabsel_3        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_command_tabsel_tabsel   ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_inactive_0              ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_inactive_0_1            ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_inactive_0_tabsel       ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_inactive_1              ctermfg=244 ctermbg=235 guifg=#839496 guibg=#073642
hi! LightlineRight_inactive_1_2            ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_inactive_1_tabsel       ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_inactive_tabsel         ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_inactive_tabsel_0       ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_inactive_tabsel_1       ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_inactive_tabsel_2       ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_inactive_tabsel_tabsel  ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_insert_0_1              ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_insert_0_tabsel         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_insert_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_insert_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_insert_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_insert_2                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_insert_2_3              ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_insert_2_tabsel         ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_insert_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_insert_tabsel_0         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_insert_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_insert_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_insert_tabsel_3         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_insert_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_normal_0                ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_normal_0_1              ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_normal_0_tabsel         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_normal_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_normal_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_normal_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_normal_2                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_normal_2_3              ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_normal_2_tabsel         ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_normal_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_normal_tabsel_0         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_normal_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_normal_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_normal_tabsel_3         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_normal_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_replace_0               ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_replace_0_1             ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_replace_0_tabsel        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_replace_1               ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_replace_1_2             ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_replace_1_tabsel        ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_replace_2               ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_replace_2_3             ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_replace_2_tabsel        ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_replace_tabsel          ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_replace_tabsel_0        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_replace_tabsel_1        ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_replace_tabsel_2        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_replace_tabsel_3        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_replace_tabsel_tabsel   ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_select_0                ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_select_0_1              ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_select_0_tabsel         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_select_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_select_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_select_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_select_2                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_select_2_3              ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_select_2_tabsel         ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_select_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_select_tabsel_0         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_select_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_select_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_select_tabsel_3         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_select_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_tabline_0               ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_tabline_0_1             ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_tabline_0_tabsel        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_tabline_tabsel          ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_tabline_tabsel_0        ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_tabline_tabsel_1        ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_tabline_tabsel_tabsel   ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_terminal_0              ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_terminal_0_1            ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_terminal_0_tabsel       ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_terminal_1              ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_terminal_1_2            ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_terminal_1_tabsel       ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_terminal_2              ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_terminal_2_3            ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_terminal_2_tabsel       ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_terminal_tabsel         ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_terminal_tabsel_0       ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_terminal_tabsel_1       ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_terminal_tabsel_2       ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_terminal_tabsel_3       ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_terminal_tabsel_tabsel  ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_visual_0                ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_visual_0_1              ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_visual_0_tabsel         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_visual_1                ctermfg=234 ctermbg=240 guifg=#002b36 guibg=#657b83
hi! LightlineRight_visual_1_2              ctermfg=240 ctermbg=235 guifg=#657b83 guibg=#073642
hi! LightlineRight_visual_1_tabsel         ctermfg=240 ctermbg=245 guifg=#657b83 guibg=#93a1a1
hi! LightlineRight_visual_2                ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_visual_2_3              ctermfg=235 ctermbg=235 guifg=#073642 guibg=#073642
hi! LightlineRight_visual_2_tabsel         ctermfg=235 ctermbg=245 guifg=#073642 guibg=#93a1a1
hi! LightlineRight_visual_tabsel           ctermfg=234 ctermbg=245 guifg=#002b36 guibg=#93a1a1
hi! LightlineRight_visual_tabsel_0         ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LightlineRight_visual_tabsel_1         ctermfg=245 ctermbg=240 guifg=#93a1a1 guibg=#657b83
hi! LightlineRight_visual_tabsel_2         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_visual_tabsel_3         ctermfg=245 ctermbg=235 guifg=#93a1a1 guibg=#073642
hi! LightlineRight_visual_tabsel_tabsel    ctermfg=245 ctermbg=245 guifg=#93a1a1 guibg=#93a1a1
hi! LineNr                                 ctermfg=10 ctermbg=0 guifg=#586e75 guibg=#073642
hi! MatchParen                             cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#fdf6e3 guibg=#073642
hi! ModeMsg                                ctermfg=4 guifg=#268bd2
hi! MoreMsg                                ctermfg=4 guifg=#268bd2
hi! Normal                                 ctermfg=12 ctermbg=8 guifg=#839496 guibg=#002b36
hi! NormalMode                             cterm=reverse ctermfg=12 ctermbg=15 gui=reverse guifg=#839496 guibg=#fdf6e3
hi! Pmenu                                  cterm=reverse ctermfg=12 ctermbg=0 gui=reverse guifg=#839496 guibg=#073642
hi! PmenuSbar                              cterm=reverse ctermfg=7 ctermbg=12 gui=reverse guifg=#eee8d5 guibg=#839496
hi! PmenuSel                               cterm=reverse ctermfg=10 ctermbg=7 gui=reverse guifg=#586e75 guibg=#eee8d5
hi! PmenuThumb                             cterm=reverse ctermfg=12 ctermbg=8 gui=reverse guifg=#839496 guibg=#002b36
hi! PreProc                                ctermfg=9 guifg=#cb4b16
hi! Question                               cterm=NONE ctermfg=6 gui=NONE guifg=#2aa198
hi! ReplaceMode                            cterm=reverse ctermfg=9 ctermbg=15 gui=reverse guifg=#cb4b16 guibg=#fdf6e3
hi! SignColumn                             ctermfg=12 guifg=#839496
hi! SignatureMarkText ctermfg=9 ctermbg=0 guibg=#073642 guifg=#e65757 guisp=NONE
hi! SignatureMarkerText                    ctermfg=10 ctermbg=0 guifg=#e65757
hi! Special                                ctermfg=9 guifg=#cb4b16
hi! SpellBad                               cterm=undercurl gui=undercurl guisp=#d33682
hi! SpellCap                               cterm=undercurl gui=undercurl guisp=#6c71c4
hi! SpellLocal                             cterm=undercurl gui=undercurl guisp=#b58900
hi! SpellRare                              cterm=undercurl gui=undercurl guisp=#2aa198
hi! Statement                              ctermfg=2 guifg=#719e07
hi! StatusLine                             cterm=reverse ctermfg=12 ctermbg=0 gui=reverse guifg=#839496 guibg=#073642
hi! StatusLineNC                           cterm=reverse ctermfg=10 ctermbg=0 gui=reverse guifg=#586e75 guibg=#073642
hi! TabLine                                cterm=reverse ctermfg=10 ctermbg=0 gui=reverse guifg=#586e75 guibg=#073642
hi! TabLineFill                            cterm=reverse ctermfg=10 ctermbg=0 gui=reverse guifg=#586e75 guibg=#073642
hi! TabLineSel                             cterm=reverse ctermfg=12 ctermbg=0 gui=reverse guifg=#839496 guibg=#073642
hi! TermCursor                             cterm=reverse gui=reverse
hi! TermCursorNC                           ctermfg=8 ctermbg=10 guifg=#002b36 guibg=#586e75
hi! Title                                  cterm=NONE ctermfg=3 gui=NONE guifg=#b58900
hi! Todo                                   cterm=NONE ctermfg=5 gui=NONE guifg=#d33682
hi! Type                                   ctermfg=3 guifg=#b58900
hi! VarId                                  ctermfg=4 guifg=#268bd2
hi! VertSplit                              ctermfg=10 ctermbg=10 guifg=#586e75 guibg=#586e75
hi! Visual                                 cterm=reverse ctermfg=10 ctermbg=8 gui=reverse guifg=#586e75 guibg=#002b36
hi! VisualMode                             cterm=reverse ctermfg=5 ctermbg=15 gui=reverse guifg=#d33682 guibg=#fdf6e3
hi! VisualNOS                              cterm=reverse ctermbg=0 gui=reverse guibg=#073642
hi! WarningMsg                             cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! WildMenu                               cterm=reverse ctermfg=7 ctermbg=0 gui=reverse guifg=#eee8d5 guibg=#073642
hi! cPreCondit                             ctermfg=9 guifg=#cb4b16
hi! gitcommitBranch                        cterm=NONE ctermfg=5 gui=NONE guifg=#d33682
hi! gitcommitComment                       ctermfg=10 gui=italic guifg=#586e75
hi! gitcommitDiscardedFile                 cterm=NONE ctermfg=1 gui=NONE guifg=#dc322f
hi! gitcommitDiscardedType                 ctermfg=1 guifg=#dc322f
hi! gitcommitFile                          cterm=NONE ctermfg=12 gui=NONE guifg=#839496
hi! gitcommitHeader                        ctermfg=10 guifg=#586e75
hi! gitcommitOnBranch                      cterm=NONE ctermfg=10 gui=NONE guifg=#586e75
hi! gitcommitSelectedFile                  cterm=NONE ctermfg=2 gui=NONE guifg=#719e07
hi! gitcommitSelectedType                  ctermfg=2 guifg=#719e07
hi! gitcommitUnmerged                      cterm=NONE ctermfg=2 gui=NONE guifg=#719e07
hi! gitcommitUnmergedFile                  cterm=NONE ctermfg=3 gui=NONE guifg=#b58900
hi! gitcommitUntrackedFile                 cterm=NONE ctermfg=6 gui=NONE guifg=#2aa198
hi! helpExample                            ctermfg=14 guifg=#93a1a1
hi! helpHyperTextEntry                     ctermfg=2 guifg=#719e07
hi! helpHyperTextJump                      ctermfg=4 guifg=#268bd2
hi! helpNote                               ctermfg=5 guifg=#d33682
hi! helpOption                             ctermfg=6 guifg=#2aa198
hi! helpVim                                ctermfg=5 guifg=#d33682
hi! hsImport                               ctermfg=5 guifg=#d33682
hi! hsImportLabel                          ctermfg=6 guifg=#2aa198
hi! hsModuleName                           ctermfg=2 guifg=#719e07
hi! hsNiceOperator                         ctermfg=6 guifg=#2aa198
hi! hsStatement                            ctermfg=6 guifg=#2aa198
hi! hsString                               ctermfg=11 guifg=#657b83
hi! hsStructure                            ctermfg=6 guifg=#2aa198
hi! hsType                                 ctermfg=3 guifg=#b58900
hi! hsTypedef                              ctermfg=6 guifg=#2aa198
hi! hsVarSym                               ctermfg=6 guifg=#2aa198
hi! hs_DeclareFunction                     ctermfg=9 guifg=#cb4b16
hi! hs_OpFunctionName                      ctermfg=3 guifg=#b58900
hi! hs_hlFunctionName                      ctermfg=4 guifg=#268bd2
hi! htmlArg                                ctermfg=11 guifg=#657b83
hi! htmlEndTag                             ctermfg=10 guifg=#586e75
hi! htmlSpecialTagName                     ctermfg=4 gui=italic guifg=#268bd2
hi! htmlTag                                ctermfg=10 guifg=#586e75
hi! htmlTagN                               cterm=NONE ctermfg=14 gui=NONE guifg=#93a1a1
hi! htmlTagName                            cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! javaScript                             ctermfg=3 guifg=#b58900
hi! lCursor                                guifg=bg guibg=fg
hi! pandocBlockQuote                       ctermfg=4 guifg=#268bd2
hi! pandocBlockQuoteLeader1                ctermfg=4 guifg=#268bd2
hi! pandocBlockQuoteLeader2                ctermfg=6 guifg=#2aa198
hi! pandocBlockQuoteLeader3                ctermfg=3 guifg=#b58900
hi! pandocBlockQuoteLeader4                ctermfg=1 guifg=#dc322f
hi! pandocBlockQuoteLeader5                ctermfg=12 guifg=#839496
hi! pandocBlockQuoteLeader6                ctermfg=10 guifg=#586e75
hi! pandocCitation                         ctermfg=5 guifg=#d33682
hi! pandocCitationDelim                    ctermfg=5 guifg=#d33682
hi! pandocCitationID                       ctermfg=5 guifg=#d33682
hi! pandocCitationRef                      ctermfg=5 guifg=#d33682
hi! pandocComment                          ctermfg=10 gui=italic guifg=#586e75
hi! pandocDefinitionBlock                  ctermfg=13 guifg=#6c71c4
hi! pandocDefinitionIndctr                 cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocDefinitionTerm                   cterm=standout ctermfg=13 gui=standout guifg=#6c71c4
hi! pandocEmphasis                         ctermfg=12 gui=italic guifg=#839496
hi! pandocEmphasisDefinition               ctermfg=13 gui=italic guifg=#6c71c4
hi! pandocEmphasisHeading                  cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocEmphasisNested                   cterm=NONE ctermfg=12 gui=NONE guifg=#839496
hi! pandocEmphasisNestedDefinition         cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocEmphasisNestedHeading            cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocEmphasisNestedTable              cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocEmphasisTable                    ctermfg=4 gui=italic guifg=#268bd2
hi! pandocEscapePair                       cterm=NONE ctermfg=1 gui=NONE guifg=#dc322f
hi! pandocFootnote                         ctermfg=2 guifg=#719e07
hi! pandocFootnoteDefLink                  cterm=NONE ctermfg=2 gui=NONE guifg=#719e07
hi! pandocFootnoteInline                   cterm=NONE ctermfg=2 gui=NONE guifg=#719e07
hi! pandocFootnoteLink                     ctermfg=2 guifg=#719e07
hi! pandocHeading                          cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocHeadingMarker                    cterm=NONE ctermfg=3 gui=NONE guifg=#b58900
hi! pandocImageCaption                     cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocLinkDefinition                   ctermfg=6 guifg=#2aa198 guisp=#657b83
hi! pandocLinkDefinitionID                 cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocLinkDelim                        ctermfg=10 guifg=#586e75
hi! pandocLinkLabel                        ctermfg=4 guifg=#268bd2
hi! pandocLinkText                         cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocLinkTitle                        ctermfg=11 guifg=#657b83
hi! pandocLinkTitleDelim                   ctermfg=10 guifg=#586e75 guisp=#657b83
hi! pandocLinkURL                          ctermfg=11 guifg=#657b83
hi! pandocListMarker                       ctermfg=5 guifg=#d33682
hi! pandocListReference                    ctermfg=5 guifg=#d33682
hi! pandocMetadata                         cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocMetadataDelim                    ctermfg=10 guifg=#586e75
hi! pandocMetadataKey                      ctermfg=4 guifg=#268bd2
hi! pandocNonBreakingSpace                 cterm=reverse ctermfg=1 gui=reverse guifg=#dc322f
hi! pandocRule                             cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocRuleLine                         cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocStrikeout                        cterm=reverse ctermfg=10 gui=reverse guifg=#586e75
hi! pandocStrikeoutDefinition              cterm=reverse ctermfg=13 gui=reverse guifg=#6c71c4
hi! pandocStrikeoutHeading                 cterm=reverse ctermfg=9 gui=reverse guifg=#cb4b16
hi! pandocStrikeoutTable                   cterm=reverse ctermfg=4 gui=reverse guifg=#268bd2
hi! pandocStrongEmphasis                   cterm=NONE ctermfg=12 gui=NONE guifg=#839496
hi! pandocStrongEmphasisDefinition         cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocStrongEmphasisEmphasis           cterm=NONE ctermfg=12 gui=NONE guifg=#839496
hi! pandocStrongEmphasisEmphasisDefinition cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocStrongEmphasisEmphasisHeading    cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocStrongEmphasisEmphasisTable      cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocStrongEmphasisHeading            cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocStrongEmphasisNested             cterm=NONE ctermfg=12 gui=NONE guifg=#839496
hi! pandocStrongEmphasisNestedDefinition   cterm=NONE ctermfg=13 gui=NONE guifg=#6c71c4
hi! pandocStrongEmphasisNestedHeading      cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocStrongEmphasisNestedTable        cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocStrongEmphasisTable              cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocStyleDelim                       ctermfg=10 guifg=#586e75
hi! pandocSubscript                        ctermfg=13 guifg=#6c71c4
hi! pandocSubscriptDefinition              ctermfg=13 guifg=#6c71c4
hi! pandocSubscriptHeading                 cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocSubscriptTable                   ctermfg=4 guifg=#268bd2
hi! pandocSuperscript                      ctermfg=13 guifg=#6c71c4
hi! pandocSuperscriptDefinition            ctermfg=13 guifg=#6c71c4
hi! pandocSuperscriptHeading               cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocSuperscriptTable                 ctermfg=4 guifg=#268bd2
hi! pandocTable                            ctermfg=4 guifg=#268bd2
hi! pandocTableStructure                   ctermfg=4 guifg=#268bd2
hi! pandocTableZebraDark                   ctermfg=4 ctermbg=0 guifg=#268bd2 guibg=#073642
hi! pandocTableZebraLight                  ctermfg=4 ctermbg=8 guifg=#268bd2 guibg=#002b36
hi! pandocTitleBlock                       ctermfg=4 guifg=#268bd2
hi! pandocTitleBlockTitle                  cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocTitleComment                     cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! pandocVerbatimBlock                    ctermfg=3 guifg=#b58900
hi! pandocVerbatimInline                   ctermfg=3 guifg=#b58900
hi! pandocVerbatimInlineDefinition         ctermfg=13 guifg=#6c71c4
hi! pandocVerbatimInlineHeading            cterm=NONE ctermfg=9 gui=NONE guifg=#cb4b16
hi! pandocVerbatimInlineTable              ctermfg=4 guifg=#268bd2
hi! perlHereDoc                            ctermfg=14 ctermbg=8 guifg=#93a1a1 guibg=#002b36
hi! perlStatementFileDesc                  ctermfg=6 ctermbg=8 guifg=#2aa198 guibg=#002b36
hi! perlVarPlain                           ctermfg=3 ctermbg=8 guifg=#b58900 guibg=#002b36
hi! rubyDefine                             cterm=NONE ctermfg=14 ctermbg=8 gui=NONE guifg=#93a1a1 guibg=#002b36
hi! texMathMatcher                         ctermfg=3 ctermbg=8 guifg=#b58900 guibg=#002b36
hi! texMathZoneX                           ctermfg=3 ctermbg=8 guifg=#b58900 guibg=#002b36
hi! texRefLabel                            ctermfg=3 ctermbg=8 guifg=#b58900 guibg=#002b36
hi! texStatement                           ctermfg=6 ctermbg=8 guifg=#2aa198 guibg=#002b36
hi! vimCmdSep                              cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! vimCommand                             ctermfg=3 guifg=#b58900
hi! vimCommentString                       ctermfg=13 guifg=#6c71c4
hi! vimGroup                               cterm=NONE ctermfg=4 gui=NONE guifg=#268bd2
hi! vimHiGroup                             ctermfg=4 guifg=#268bd2
hi! vimHiLink                              ctermfg=4 guifg=#268bd2
hi! vimIsCommand                           ctermfg=11 guifg=#657b83
hi! vimSynMtchOpt                          ctermfg=3 guifg=#b58900
hi! vimSynType                             ctermfg=6 guifg=#2aa198
hi! link Boolean                                Constant
hi! link Character                              Constant
hi! link Conditional                            Statement
hi! link Debug                                  Special
hi! link Define                                 PreProc
hi! link Delimiter                              Special
hi! link EasyMotionShade                        Comment
hi! link EndOfBuffer                            NonText
hi! link Exception                              Statement
hi! link Float                                  Number
hi! link Function                               Identifier
hi! link GitGutterAdd                           GitGutterAddDefault
hi! link GitGutterAddLine                       DiffAdd
hi! link GitGutterChange                        GitGutterChangeDefault
hi! link GitGutterChangeDelete                  GitGutterChangeDeleteDefault
hi! link GitGutterChangeDeleteDefault           GitGutterChangeDefault
hi! link GitGutterChangeDeleteInvisible         GitGutterChangeInvisble
hi! link GitGutterChangeDeleteLine              GitGutterChangeLine
hi! link GitGutterChangeLine                    DiffChange
hi! link GitGutterDelete                        GitGutterDeleteDefault
hi! link GitGutterDeleteLine                    DiffDelete
hi! link Include                                PreProc
hi! link Keyword                                Statement
hi! link Label                                  Statement
hi! link LightlineLeft_active_0                 LightlineLeft_normal_0
hi! link LightlineLeft_active_0_1               LightlineLeft_normal_0_1
hi! link LightlineLeft_active_0_tabsel          LightlineLeft_normal_0_tabsel
hi! link LightlineLeft_active_1                 LightlineLeft_normal_1
hi! link LightlineLeft_active_1_2               LightlineLeft_normal_1_2
hi! link LightlineLeft_active_1_tabsel          LightlineLeft_normal_1_tabsel
hi! link LightlineLeft_active_tabsel            LightlineLeft_normal_tabsel
hi! link LightlineLeft_active_tabsel_0          LightlineLeft_normal_tabsel_0
hi! link LightlineLeft_active_tabsel_1          LightlineLeft_normal_tabsel_1
hi! link LightlineLeft_active_tabsel_2          LightlineLeft_normal_tabsel_2
hi! link LightlineLeft_active_tabsel_tabsel     LightlineLeft_normal_tabsel_tabsel
hi! link LightlineMiddle_active                 LightlineMiddle_normal
hi! link LightlineRight_active_0                LightlineRight_normal_0
hi! link LightlineRight_active_0_1              LightlineRight_normal_0_1
hi! link LightlineRight_active_0_tabsel         LightlineRight_normal_0_tabsel
hi! link LightlineRight_active_1                LightlineRight_normal_1
hi! link LightlineRight_active_1_2              LightlineRight_normal_1_2
hi! link LightlineRight_active_1_tabsel         LightlineRight_normal_1_tabsel
hi! link LightlineRight_active_2                LightlineRight_normal_2
hi! link LightlineRight_active_2_3              LightlineRight_normal_2_3
hi! link LightlineRight_active_2_tabsel         LightlineRight_normal_2_tabsel
hi! link LightlineRight_active_tabsel           LightlineRight_normal_tabsel
hi! link LightlineRight_active_tabsel_0         LightlineRight_normal_tabsel_0
hi! link LightlineRight_active_tabsel_1         LightlineRight_normal_tabsel_1
hi! link LightlineRight_active_tabsel_2         LightlineRight_normal_tabsel_2
hi! link LightlineRight_active_tabsel_3         LightlineRight_normal_tabsel_3
hi! link LightlineRight_active_tabsel_tabsel    LightlineRight_normal_tabsel_tabsel
hi! link Macro                                  PreProc
hi! link NERDTreeBookmark                       Normal
hi! link NERDTreeBookmarkName                   Identifier
hi! link NERDTreeBookmarksHeader                Statement
hi! link NERDTreeBookmarksLeader                Ignore
hi! link NERDTreeCWD                            Statement
hi! link NERDTreeClosable                       Directory
hi! link NERDTreeCurrentNode                    Search
hi! link NERDTreeDir                            Directory
hi! link NERDTreeDirSlash                       Identifier
hi! link NERDTreeExecFile                       Title
hi! link NERDTreeFile                           Normal
hi! link NERDTreeFlags                          Number
hi! link NERDTreeHelp                           String
hi! link NERDTreeHelpCommand                    Identifier
hi! link NERDTreeHelpKey                        Identifier
hi! link NERDTreeHelpTitle                      Macro
hi! link NERDTreeIgnore                         Ignore
hi! link NERDTreeLinkDir                        Macro
hi! link NERDTreeLinkFile                       Macro
hi! link NERDTreeLinkTarget                     Type
hi! link NERDTreeOpenable                       Directory
hi! link NERDTreePart                           Special
hi! link NERDTreePartFile                       Type
hi! link NERDTreeRO                             WarningMsg
hi! link NERDTreeToggleOff                      WarningMsg
hi! link NERDTreeToggleOn                       Question
hi! link NERDTreeUp                             Directory
hi! link NonText vimCommand
hi! link Number                                 Constant
hi! link Operator                               Statement
hi! link PreCondit                              PreProc
hi! link QuickFixLine                           Search
hi! link Repeat                                 Statement
hi! link SpecialChar                            Special
hi! link SpecialComment                         Special
hi! link SpecialKey preProc
hi! link StatusLineTerm                         StatusLine
hi! link StatusLineTermNC                       StatusLineNC
hi! link StorageClass                           Type
hi! link String                                 Constant
hi! link Structure                              Type
hi! link Substitute                             Search
hi! link Tag                                    Special
hi! link Typedef                                Type
hi! link Whitespace                             NonText
hi! link awkFunctionTag                         Function
hi! link cEnum                                  Identifier
hi! link cFunction                              Function
hi! link csClassOrStruct                        Identifier
hi! link csMethod                               Function
hi! link deniteMatchedChar                      Search
hi! link deniteMatchedRange                     Underlined
hi! link deniteMode                             ModeMsg
hi! link deniteSelectedLine                     Statement
hi! link deniteSourceLine_buffer                Type
hi! link deniteSourceLine_file_mru              Type
hi! link deniteSource_buffer_Info               PreProc
hi! link deniteSource_buffer_Modified           Statement
hi! link deniteSource_buffer_Name               Function
hi! link deniteSource_buffer_NoFile             Function
hi! link deniteSource_buffer_Prefix             Constant
hi! link deniteSource_buffer_Time               Statement
hi! link deniteStatusLineNumber                 LineNr
hi! link deniteStatusLinePath                   Comment
hi! link diffAdded                              Statement
hi! link diffLine                               Identifier
hi! link gitcommitDiscarded                     gitcommitComment
hi! link gitcommitDiscardedArrow                gitcommitDiscardedFile
hi! link gitcommitNoBranch                      gitcommitBranch
hi! link gitcommitSelected                      gitcommitComment
hi! link gitcommitSelectedArrow                 gitcommitSelectedFile
hi! link gitcommitUnmergedArrow                 gitcommitUnmergedFile
hi! link gitcommitUntracked                     gitcommitComment
hi! link helpBacktick                           Ignore
hi! link helpBar                                Ignore
hi! link helpBoolean                            Boolean
hi! link helpCharacter                          Character
hi! link helpCommand                            Comment
hi! link helpComment                            Comment
hi! link helpConditional                        Conditional
hi! link helpConstant                           Constant
hi! link helpDebug                              Debug
hi! link helpDefine                             Define
hi! link helpDelimiter                          Delimiter
hi! link helpError                              Error
hi! link helpException                          Exception
hi! link helpFloat                              Float
hi! link helpFunction                           Function
hi! link helpHeader                             PreProc
hi! link helpHeadline                           Statement
hi! link helpIdentifier                         Identifier
hi! link helpIgnore                             Ignore
hi! link helpInclude                            Include
hi! link helpKeyword                            Keyword
hi! link helpLabel                              Label
hi! link helpMacro                              Macro
hi! link helpNumber                             Number
hi! link helpOperator                           Operator
hi! link helpPreCondit                          PreCondit
hi! link helpPreProc                            PreProc
hi! link helpRepeat                             Repeat
hi! link helpSectionDelim                       PreProc
hi! link helpSpecial                            Special
hi! link helpSpecialChar                        SpecialChar
hi! link helpSpecialComment                     SpecialComment
hi! link helpStar                               Ignore
hi! link helpStatement                          Statement
hi! link helpStorageClass                       StorageClass
hi! link helpString                             String
hi! link helpStructure                          Structure
hi! link helpTag                                Tag
hi! link helpTodo                               Todo
hi! link helpType                               Type
hi! link helpTypedef                            Typedef
hi! link helpURL                                String
hi! link helpUnderlined                         Underlined
hi! link helpWarning                            Todo
hi! link hsDelimTypeExport                      Delimiter
hi! link hsImportParams                         Delimiter
hi! link hsModuleStartLabel                     hsStructure
hi! link hsModuleWhereLabel                     hsModuleStartLabel
hi! link javaClass                              Identifier
hi! link javaInterface                          Identifier
hi! link javaMethod                             Function
hi! link luaBraceError                          Error
hi! link luaComment                             Comment
hi! link luaCond                                Conditional
hi! link luaConstant                            Constant
hi! link luaElse                                Conditional
hi! link luaError                               Error
hi! link luaFor                                 Repeat
hi! link luaFunc                                Identifier
hi! link luaFunction                            Function
hi! link luaIn                                  Operator
hi! link luaLabel                               Label
hi! link luaNumber                              Number
hi! link luaOperator                            Operator
hi! link luaParenError                          Error
hi! link luaRepeat                              Repeat
hi! link luaSpecial                             SpecialChar
hi! link luaStatement                           Statement
hi! link luaString                              String
hi! link luaString2                             String
hi! link luaTable                               Structure
hi! link luaTodo                                Todo
hi! link pandocCodeBlock                        pandocVerbatimBlock
hi! link pandocCodeBlockDelim                   pandocVerbatimBlock
hi! link pandocEscapedCharacter                 pandocEscapePair
hi! link pandocLineBreak                        pandocEscapePair
hi! link pandocMetadataTitle                    pandocMetadata
hi! link pandocTableStructureEnd                pandocTableStructre
hi! link pandocTableStructureTop                pandocTableStructre
hi! link pandocVerbatimBlockDeep                pandocVerbatimBlock
hi! link perlAnglesDQ                           perlString
hi! link perlAnglesSQ                           perlString
hi! link perlArrow                              perlIdentifier
hi! link perlBracesDQ                           perlString
hi! link perlBracesSQ                           perlString
hi! link perlBracketsDQ                         perlString
hi! link perlBracketsSQ                         perlString
hi! link perlCharacter                          Character
hi! link perlComment                            Comment
hi! link perlConditional                        Conditional
hi! link perlControl                            PreProc
hi! link perlDATA                               perlComment
hi! link perlElseIfError                        Error
hi! link perlFiledescRead                       perlIdentifier
hi! link perlFiledescStatement                  perlIdentifier
hi! link perlFloat                              Float
hi! link perlFormatField                        perlString
hi! link perlFormatName                         perlIdentifier
hi! link perlFunction                           Keyword
hi! link perlFunctionName                       perlIdentifier
hi! link perlFunctionPRef                       perlType
hi! link perlFunctionTag                        Operator
hi! link perlIdentifier                         Identifier
hi! link perlInclude                            Include
hi! link perlLabel                              Label
hi! link perlList                               perlStatement
hi! link perlMatch                              perlString
hi! link perlMatchStartEnd                      perlStatement
hi! link perlMethod                             perlIdentifier
hi! link perlMisc                               perlStatement
hi! link perlNotEmptyLine                       Error
hi! link perlNumber                             Number
hi! link perlOperator                           Operator
hi! link perlPOD                                perlComment
hi! link perlPackageDecl                        perlType
hi! link perlPackageRef                         perlType
hi! link perlParensDQ                           perlString
hi! link perlParensSQ                           perlString
hi! link perlQQ                                 perlString
hi! link perlRepeat                             Repeat
hi! link perlSharpBang                          PreProc
hi! link perlShellCommand                       perlString
hi! link perlSpecial                            Special
hi! link perlSpecialAscii                       perlSpecial
hi! link perlSpecialDollar                      perlSpecial
hi! link perlSpecialMatch                       perlSpecial
hi! link perlSpecialString                      perlSpecial
hi! link perlSpecialStringU                     perlSpecial
hi! link perlSpecialStringU2                    perlString
hi! link perlStatement                          Statement
hi! link perlStatementControl                   perlStatement
hi! link perlStatementFiles                     perlStatement
hi! link perlStatementFlow                      perlStatement
hi! link perlStatementHash                      perlStatement
hi! link perlStatementIOfunc                    perlStatement
hi! link perlStatementIPC                       perlStatement
hi! link perlStatementInclude                   perlStatement
hi! link perlStatementIndirObj                  perlStatement
hi! link perlStatementList                      perlStatement
hi! link perlStatementMisc                      perlStatement
hi! link perlStatementNetwork                   perlStatement
hi! link perlStatementNumeric                   perlStatement
hi! link perlStatementPackage                   perlStatement
hi! link perlStatementProc                      perlStatement
hi! link perlStatementPword                     perlStatement
hi! link perlStatementRegexp                    perlStatement
hi! link perlStatementScalar                    perlStatement
hi! link perlStatementSocket                    perlStatement
hi! link perlStatementStorage                   perlStatement
hi! link perlStatementTime                      perlStatement
hi! link perlStatementVector                    perlStatement
hi! link perlStorageClass                       perlType
hi! link perlString                             String
hi! link perlStringStartEnd                     perlString
hi! link perlStringUnexpanded                   perlString
hi! link perlSubAttributes                      PreProc
hi! link perlSubAttributesCont                  perlSubAttributes
hi! link perlSubError                           Error
hi! link perlSubName                            Function
hi! link perlSubPrototype                       Type
hi! link perlSubPrototypeError                  Error
hi! link perlSubstitutionGQQ                    perlString
hi! link perlSubstitutionSQ                     perlString
hi! link perlTodo                               Todo
hi! link perlTranslationGQ                      perlString
hi! link perlType                               Type
hi! link perlVStringV                           perlStringStartEnd
hi! link perlVarNotInMatches                    perlIdentifier
hi! link perlVarPlain2                          perlIdentifier
hi! link perlVarSimpleMember                    perlIdentifier
hi! link perlVarSimpleMemberName                perlString
hi! link perlVarSlash                           perlIdentifier
hi! link podCmdText                             String
hi! link podCommand                             Statement
hi! link podEscape                              String
hi! link podEscape2                             Number
hi! link podForKeywd                            Identifier
hi! link podFormat                              Identifier
hi! link podOverIndent                          Number
hi! link podSpecial                             Identifier
hi! link podVerbatimLine                        PreProc
hi! link pythonAsync                            Statement
hi! link pythonBuiltin                          Function
hi! link pythonClassTag                         pythonFunction
hi! link pythonComment                          Comment
hi! link pythonConditional                      Conditional
hi! link pythonDecorator                        Define
hi! link pythonDecoratorName                    Function
hi! link pythonDoctest                          Special
hi! link pythonDoctestValue                     Define
hi! link pythonEscape                           Special
hi! link pythonException                        Exception
hi! link pythonExceptions                       Structure
hi! link pythonFunction                         Function
hi! link pythonInclude                          Include
hi! link pythonMethodTag                        pythonFunction
hi! link pythonNumber                           Number
hi! link pythonOperator                         Operator
hi! link pythonQuotes                           String
hi! link pythonRawString                        String
hi! link pythonRepeat                           Repeat
hi! link pythonStatement                        Statement
hi! link pythonString                           String
hi! link pythonTodo                             Todo
hi! link pythonTripleQuotes                     pythonQuotes
hi! link rubyASCIICode                          Character
hi! link rubyAccess                             Statement
hi! link rubyAttribute                          Statement
hi! link rubyBeginEnd                           Statement
hi! link rubyBlockParameter                     rubyIdentifier
hi! link rubyBoolean                            Boolean
hi! link rubyCapitalizedMethod                  rubyLocalVariableOrMethod
hi! link rubyClass                              rubyDefine
hi! link rubyClassName                          Type
hi! link rubyClassVariable                      rubyIdentifier
hi! link rubyComment                            Comment
hi! link rubyConditional                        Conditional
hi! link rubyConditionalModifier                rubyConditional
hi! link rubyConstant                           Type
hi! link rubyControl                            Statement
hi! link rubyData                               Comment
hi! link rubyDataDirective                      Delimiter
hi! link rubyDocumentation                      Comment
hi! link rubyError                              Error
hi! link rubyEval                               Statement
hi! link rubyException                          Exception
hi! link rubyExceptional                        rubyConditional
hi! link rubyFloat                              Float
hi! link rubyFunction                           Function
hi! link rubyGlobalVariable                     rubyIdentifier
hi! link rubyHeredoc                            rubyString
hi! link rubyIdentifier                         Identifier
hi! link rubyInclude                            Include
hi! link rubyInstanceVariable                   rubyIdentifier
hi! link rubyInteger                            Number
hi! link rubyInterpolationDelimiter             Delimiter
hi! link rubyInvalidVariable                    Error
hi! link rubyKeyword                            Keyword
hi! link rubyMethodExceptional                  rubyDefine
hi! link rubyMethodName                         Function
hi! link rubyModule                             rubyDefine
hi! link rubyModuleName                         Type
hi! link rubyNoInterpolation                    rubyString
hi! link rubyOperator                           Operator
hi! link rubyOptionalDo                         rubyRepeat
hi! link rubyPredefinedConstant                 rubyPredefinedIdentifier
hi! link rubyPredefinedIdentifier               rubyIdentifier
hi! link rubyPredefinedVariable                 rubyPredefinedIdentifier
hi! link rubyPseudoVariable                     Constant
hi! link rubyQuoteEscape                        rubyStringEscape
hi! link rubyRegexp                             rubyString
hi! link rubyRegexpAnchor                       rubyRegexpSpecial
hi! link rubyRegexpCharClass                    rubyRegexpSpecial
hi! link rubyRegexpComment                      Comment
hi! link rubyRegexpDelimiter                    rubyStringDelimiter
hi! link rubyRegexpDot                          rubyRegexpCharClass
hi! link rubyRegexpEscape                       rubyRegexpSpecial
hi! link rubyRegexpQuantifier                   rubyRegexpSpecial
hi! link rubyRegexpSpecial                      Special
hi! link rubyRepeat                             Repeat
hi! link rubyRepeatModifier                     rubyRepeat
hi! link rubySharpBang                          PreProc
hi! link rubySpaceError                         rubyError
hi! link rubyString                             String
hi! link rubyStringDelimiter                    Delimiter
hi! link rubyStringEscape                       Special
hi! link rubySymbol                             Constant
hi! link rubySymbolDelimiter                    rubySymbol
hi! link rubyTodo                               Todo
hi! link shAlias                                Identifier
hi! link shArithRegion                          shShellVariables
hi! link shArithmetic                           Special
hi! link shAstQuote                             shDoubleQuote
hi! link shAtExpr                               shSetList
hi! link shBeginHere                            shRedir
hi! link shCaseBar                              shConditional
hi! link shCaseCommandSub                       shCommandSub
hi! link shCaseDoubleQuote                      shDoubleQuote
hi! link shCaseError                            Error
hi! link shCaseIn                               shConditional
hi! link shCaseSingleQuote                      shSingleQuote
hi! link shCaseStart                            shConditional
hi! link shCharClass                            Identifier
hi! link shCmdSubRegion                         shShellVariables
hi! link shColon                                shComment
hi! link shCommandSub                           Special
hi! link shComment                              Comment
hi! link shCondError                            Error
hi! link shConditional                          Conditional
hi! link shCtrlSeq                              Special
hi! link shCurlyError                           Error
hi! link shDeref                                shShellVariables
hi! link shDerefDelim                           shOperator
hi! link shDerefOp                              shOperator
hi! link shDerefOpError                         Error
hi! link shDerefPOL                             shDerefOp
hi! link shDerefPPS                             shDerefOp
hi! link shDerefPSR                             shDerefOp
hi! link shDerefSimple                          shDeref
hi! link shDerefSpecial                         shDeref
hi! link shDerefString                          shDoubleQuote
hi! link shDerefVar                             shDeref
hi! link shDerefWordError                       Error
hi! link shDoError                              Error
hi! link shDoubleQuote                          shString
hi! link shEcho                                 shString
hi! link shEchoDelim                            shOperator
hi! link shEchoQuote                            shString
hi! link shEmbeddedEcho                         shString
hi! link shEsacError                            Error
hi! link shEscape                               shCommandSub
hi! link shExDoubleQuote                        shDoubleQuote
hi! link shExSingleQuote                        shSingleQuote
hi! link shExprRegion                           Delimiter
hi! link shForPP                                shLoop
hi! link shFunction                             Function
hi! link shFunctionKey                          Function
hi! link shFunctionName                         Function
hi! link shFunctionTag                          Operator
hi! link shFunctionTagTag                       shFunctionTag
hi! link shHereDoc                              shString
hi! link shHereDoc01                            shRedir
hi! link shHereDoc02                            shRedir
hi! link shHereDoc03                            shRedir
hi! link shHereDoc04                            shRedir
hi! link shHereDoc05                            shRedir
hi! link shHereDoc06                            shRedir
hi! link shHereDoc07                            shRedir
hi! link shHereDoc08                            shRedir
hi! link shHereDoc09                            shRedir
hi! link shHereDoc10                            shRedir
hi! link shHereDoc11                            shRedir
hi! link shHereDoc12                            shRedir
hi! link shHereDoc13                            shRedir
hi! link shHereDoc14                            shRedir
hi! link shHereDoc15                            shRedir
hi! link shHerePayload                          shHereDoc
hi! link shHereString                           shRedir
hi! link shIfError                              Error
hi! link shInError                              Error
hi! link shLoop                                 shStatement
hi! link shNoQuote                              shDoubleQuote
hi! link shNumber                               Number
hi! link shOperator                             Operator
hi! link shOption                               shCommandSub
hi! link shParen                                shArithmetic
hi! link shParenError                           Error
hi! link shPattern                              shString
hi! link shPosnParm                             shShellVariables
hi! link shQuickComment                         shComment
hi! link shQuote                                shOperator
hi! link shRange                                shOperator
hi! link shRedir                                shOperator
hi! link shRepeat                               Repeat
hi! link shSet                                  Statement
hi! link shSetList                              Identifier
hi! link shSetListDelim                         shOperator
hi! link shSetOption                            shOption
hi! link shShellVariables                       PreProc
hi! link shSingleQuote                          shString
hi! link shSnglCase                             Statement
hi! link shSource                               shOperator
hi! link shSpecial                              Special
hi! link shSpecialNxt                           shSpecial
hi! link shStatement                            Statement
hi! link shString                               String
hi! link shStringSpecial                        shSpecial
hi! link shSubShRegion                          shOperator
hi! link shTestDoubleQuote                      shString
hi! link shTestError                            Error
hi! link shTestOpr                              shConditional
hi! link shTestPattern                          shString
hi! link shTestSingleQuote                      shString
hi! link shTodo                                 Todo
hi! link shTouchCmd                             shStatement
hi! link shVariable                             shSetList
hi! link shWrapLineOperator                     shOperator
hi! link tclCommandTag                          Operator
hi! link vimAbb                                 vimCommand
hi! link vimAddress                             vimMark
hi! link vimAuHighlight                         vimHighlight
hi! link vimAugroupError                        vimError
hi! link vimAugroupKey                          vimCommand
hi! link vimAutoCmd                             vimCommand
hi! link vimAutoCmdOpt                          vimOption
hi! link vimAutoEvent                           Type
hi! link vimAutoGroup                           vimAutoEvent
hi! link vimAutoGroupTag                        vimAutoGroup
hi! link vimAutoSet                             vimCommand
hi! link vimBehave                              vimCommand
hi! link vimBehaveError                         vimError
hi! link vimBehaveModel                         vimBehave
hi! link vimBracket                             Delimiter
hi! link vimBufnrWarn                           vimWarn
hi! link vimCmplxRepeat                         SpecialChar
hi! link vimCollClassErr                        vimError
hi! link vimCommandTag                          vimCommand
hi! link vimComment                             Comment
hi! link vimCommentTitle                        PreProc
hi! link vimCondHL                              vimCommand
hi! link vimContinue                            Special
hi! link vimCtrlChar                            SpecialChar
hi! link vimEchoHL                              vimCommand
hi! link vimEchoHLNone                          vimGroup
hi! link vimElseIfErr                           Error
hi! link vimElseif                              vimCondHL
hi! link vimEmbedError                          vimError
hi! link vimEnvvar                              PreProc
hi! link vimErrSetting                          vimError
hi! link vimError                               Error
hi! link vimFBVar                               vimVar
hi! link vimFTCmd                               vimCommand
hi! link vimFTError                             vimError
hi! link vimFTOption                            vimSynType
hi! link vimFgBgAttrib                          vimHiAttrib
hi! link vimFold                                Folded
hi! link vimFunc                                Function
hi! link vimFuncKey                             vimCommand
hi! link vimFuncName                            Function
hi! link vimFuncNameTag                         vimFuncName
hi! link vimFuncSID                             Special
hi! link vimFuncVar                             Identifier
hi! link vimFunctionError                       vimError
hi! link vimGroupAdd                            vimSynOption
hi! link vimGroupName                           vimGroup
hi! link vimGroupRem                            vimSynOption
hi! link vimGroupSpecial                        Special
hi! link vimHLGroup                             vimGroup
hi! link vimHLMod                               PreProc
hi! link vimHiAttrib                            PreProc
hi! link vimHiAttribList                        vimError
hi! link vimHiCTerm                             vimHiTerm
hi! link vimHiClear                             vimHighlight
hi! link vimHiCtermError                        vimError
hi! link vimHiCtermFgBg                         vimHiTerm
hi! link vimHiGui                               vimHiTerm
hi! link vimHiGuiFgBg                           vimHiTerm
hi! link vimHiGuiFont                           vimHiTerm
hi! link vimHiGuiRgb                            vimNumber
hi! link vimHiKeyError                          vimError
hi! link vimHiNmbr                              Number
hi! link vimHiStartStop                         vimHiTerm
hi! link vimHiTerm                              Type
hi! link vimHighlight                           vimCommand
hi! link vimInsert                              vimString
hi! link vimIskSep                              Delimiter
hi! link vimKeyCode                             vimSpecFile
hi! link vimKeyCodeError                        vimError
hi! link vimKeyword                             Statement
hi! link vimLet                                 vimCommand
hi! link vimLineComment                         vimComment
hi! link vimMap                                 vimCommand
hi! link vimMapBang                             vimCommand
hi! link vimMapMod                              vimBracket
hi! link vimMapModErr                           vimError
hi! link vimMapModKey                           vimFuncSID
hi! link vimMark                                Number
hi! link vimMarkNumber                          vimNumber
hi! link vimMenuMod                             vimMapMod
hi! link vimMenuName                            PreProc
hi! link vimMenuNameMore                        vimMenuName
hi! link vimMtchComment                         vimComment
hi! link vimNorm                                vimCommand
hi! link vimNotFunc                             vimCommand
hi! link vimNotPatSep                           vimString
hi! link vimNotation                            Special
hi! link vimNumber                              Number
hi! link vimOper                                Operator
hi! link vimOperError                           Error
hi! link vimOption                              PreProc
hi! link vimParenSep                            Delimiter
hi! link vimPatSep                              SpecialChar
hi! link vimPatSepErr                           vimPatSep
hi! link vimPatSepR                             vimPatSep
hi! link vimPatSepZ                             vimPatSep
hi! link vimPatSepZone                          vimString
hi! link vimPattern                             Type
hi! link vimPlainMark                           vimMark
hi! link vimPlainRegister                       vimRegister
hi! link vimRegister                            SpecialChar
hi! link vimScriptDelim                         Comment
hi! link vimScriptFuncName                      vimFuncName
hi! link vimScriptFuncNameTag                   vimScriptFuncName
hi! link vimSearch                              vimString
hi! link vimSearchDelim                         Statement
hi! link vimSep                                 Delimiter
hi! link vimSet                                 Normal
hi! link vimSetEqual                            Normal
hi! link vimSetMod                              vimOption
hi! link vimSetSep                              Statement
hi! link vimSetString                           vimString
hi! link vimSpecFile                            Identifier
hi! link vimSpecFileMod                         vimSpecFile
hi! link vimSpecial                             Type
hi! link vimStatement                           Statement
hi! link vimString                              String
hi! link vimStringCont                          vimString
hi! link vimSubst                               vimCommand
hi! link vimSubst1                              vimSubst
hi! link vimSubstDelim                          Delimiter
hi! link vimSubstFlagErr                        vimError
hi! link vimSubstFlags                          Special
hi! link vimSubstSubstr                         SpecialChar
hi! link vimSubstTwoBS                          vimString
hi! link vimSynCase                             Type
hi! link vimSynCaseError                        vimError
hi! link vimSynContains                         vimSynOption
hi! link vimSynError                            Error
hi! link vimSynKeyContainedin                   vimSynContains
hi! link vimSynKeyOpt                           vimSynOption
hi! link vimSynMtchGrp                          vimSynOption
hi! link vimSynNextgroup                        vimSynOption
hi! link vimSynNotPatRange                      vimSynRegPat
hi! link vimSynOption                           Special
hi! link vimSynPatRange                         vimString
hi! link vimSynReg                              Type
hi! link vimSynRegOpt                           vimSynOption
hi! link vimSynRegPat                           vimString
hi! link vimSyncC                               Type
hi! link vimSyncError                           Error
hi! link vimSyncGroup                           vimGroupName
hi! link vimSyncGroupName                       vimGroupName
hi! link vimSyncKey                             Type
hi! link vimSyncNone                            Type
hi! link vimSyntax                              vimCommand
hi! link vimTodo                                Todo
hi! link vimUnmap                               vimMap
hi! link vimUserAttrb                           vimSpecial
hi! link vimUserAttrbCmplt                      vimSpecial
hi! link vimUserAttrbCmpltFunc                  Special
hi! link vimUserAttrbError                      Error
hi! link vimUserAttrbKey                        vimOption
hi! link vimUserCmdError                        Error
hi! link vimUserCommand                         vimCommand
hi! link vimUserFunc                            Function
hi! link vimVar                                 Identifier
hi! link vimWarn                                WarningMsg
hi! link Error                                 ErrorMsg
hi! link EasyMotionShade Comment

" vim:ff=unix:
