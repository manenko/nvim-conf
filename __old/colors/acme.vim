" Vim color scheme based on Acme & Sam

set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "acme"

if has('termguicolors')
  set termguicolors
endif




" Basic coloring
hi Normal guifg=#444444 guibg=#FFFFE8 ctermfg=239 ctermbg=230
hi Cursor guifg=#FFFFE8 guibg=#444444 ctermfg=230 ctermbg=239
hi LineNr guifg=#444444 guibg=#EFEFD8 ctermfg=239 ctermbg=254
hi CursorLineNr guifg=#444444 guibg=#EFEFD8 ctermfg=239 ctermbg=254
hi VertSplit guifg=#007777 guibg=NONE ctermfg=30 ctermbg=NONE
hi MatchParen guifg=#444444 guibg=#A8EFEB ctermfg=239 ctermbg=123
hi Pmenu guifg=#FFFFE8 guibg=#444444 ctermfg=230 ctermbg=239
hi PmenuSel guifg=NONE guibg=#A8EFEB ctermfg=NONE ctermbg=123
hi PmenuSbar guifg=NONE guibg=#A8EFEB ctermfg=NONE ctermbg=123
hi PmenuThumb guifg=NONE guibg=#007777 ctermfg=NONE ctermbg=30

" Status line
hi StatusLine guifg=#444444 guibg=#E1FAFF ctermfg=239 ctermbg=111
hi StatusLineNC guifg=#444444 guibg=#E5E5D0 ctermfg=239 ctermbg=252

" Search
hi Search guifg=#444444 guibg=#A8EFEB ctermfg=239 ctermbg=123
hi IncSearch guifg=#444444 guibg=#A8EFEB ctermfg=239 ctermbg=123

" Errors and warnings
hi Error guifg=#880000 guibg=NONE gui=bold ctermfg=88 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#880000 guibg=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#444444 guibg=#E8FCE8 ctermfg=239 ctermbg=194
hi DiffChange guifg=#888838 guibg=NONE ctermfg=136 ctermbg=NONE
hi DiffDelete guifg=#444444 guibg=#F8E8E8 ctermfg=239 ctermbg=224
hi DiffText guifg=#005500 guibg=#E8FCE8 gui=bold ctermfg=22 ctermbg=194 cterm=bold

" Code highlighting
hi Comment guifg=#005500 gui=NONE ctermfg=22 cterm=NONE
hi Constant guifg=#444444 gui=bold ctermfg=239 cterm=bold
hi String guifg=#880000 gui=NONE ctermfg=88 cterm=NONE
hi Identifier guifg=#444444 gui=NONE ctermfg=239 cterm=NONE
hi Function guifg=#444444 gui=NONE ctermfg=239 cterm=NONE
hi Statement guifg=#1054AF gui=bold ctermfg=32 cterm=bold
hi Type guifg=#444444 gui=bold ctermfg=239 cterm=bold
hi Keyword guifg=#1054AF gui=bold ctermfg=32 cterm=bold
hi PreProc guifg=#880000 gui=NONE ctermfg=88 cterm=NONE
hi Include guifg=#880000 gui=NONE ctermfg=88 cterm=NONE
hi Todo guifg=#888838 guibg=#EFEFD8 gui=NONE ctermfg=136 ctermbg=254 cterm=NONE
hi SpecialComment guifg=#007777 gui=NONE ctermfg=30 cterm=NONE
hi Underlined guifg=#888838 gui=underline ctermfg=136 cterm=underline

" LSP highlighting
hi LspReferenceText guibg=#E5E5D0 ctermbg=252
hi LspReferenceRead guibg=#FFEAFF ctermbg=225
hi LspReferenceWrite guibg=#E8FCE8 ctermbg=230

" GitGutter
hi GitGutterAdd guifg=#006600 guibg=NONE ctermfg=28 ctermbg=NONE
hi GitGutterChange guifg=#888838 guibg=NONE ctermfg=136 ctermbg=NONE
hi GitGutterDelete guifg=#880000 guibg=NONE ctermfg=88 ctermbg=NONE

" Line highlighting
hi CursorLine guibg=#EFEFD8 ctermbg=254
hi ColorColumn guibg=#EFEFD8 ctermbg=254

" Org-mode
hi OrgLevel1 guifg=#1054AF guibg=#E1FAFF gui=bold ctermfg=32 ctermbg=111 cterm=bold
hi OrgLevel2 guifg=#007777 guibg=#E1FAFF gui=bold ctermfg=30 ctermbg=111 cterm=bold
hi OrgLevel3 guifg=#1054AF guibg=#E1FAFF gui=bold ctermfg=32 ctermbg=111 cterm=bold
hi OrgLevel4 guifg=#007777 guibg=#E1FAFF ctermfg=30 ctermbg=111
hi OrgLevel5 guifg=#1054AF guibg=#E1FAFF ctermfg=32 ctermbg=111
hi OrgLevel6 guifg=#007777 guibg=#E1FAFF ctermfg=30 ctermbg=111
hi OrgLevel7 guifg=#1054AF guibg=#E1FAFF ctermfg=32 ctermbg=111
hi OrgLevel8 guifg=#007777 guibg=#E1FAFF ctermfg=30 ctermbg=111
hi OrgDocumentTitle guifg=#1054AF gui=bold,underline ctermfg=32 cterm=bold,underline
hi OrgMetaLine guifg=#005500 ctermfg=22
hi OrgDocumentInfo guifg=#007777 ctermfg=30
hi OrgTodo guifg=#888838 guibg=#EFEFD8 ctermfg=136 ctermbg=254
hi OrgDone guifg=#005500 guibg=#E8FCE8 ctermfg=22 ctermbg=194

" Miscellaneous
hi LineNr guifg=#CCCCB7 guibg=NONE ctermfg=187 ctermbg=NONE
hi LineNrAbove guifg=#B8B09A guibg=NONE ctermfg=187 ctermbg=NONE
hi LineNrBelow guifg=#B8B09A guibg=NONE ctermfg=187 ctermbg=NONE
hi TabLine guifg=#444444 guibg=#EFEFD8 ctermfg=239 ctermbg=254
hi TabLineSel guifg=#444444 guibg=#FFFFE8 ctermfg=239 ctermbg=230
hi TabLineFill guifg=#444444 guibg=#FFFFE8 ctermfg=239 ctermbg=230

" Neovim-specific highlighting

" Treesitter
hi TSFunction guifg=#1054AF gui=bold ctermfg=32 cterm=bold
hi TSMethod guifg=#1054AF gui=bold ctermfg=32 cterm=bold
hi TSKeyword guifg=#1054AF gui=bold ctermfg=32 cterm=bold
hi TSString guifg=#880000 gui=NONE ctermfg=88 cterm=NONE
hi TSVariable guifg=#444444 gui=NONE ctermfg=239 cterm=NONE
hi TSType guifg=#444444 gui=bold ctermfg=239 cterm=bold
hi TSConstant guifg=#444444 gui=bold ctermfg=239 cterm=bold
hi TSParameter guifg=#007777 gui=NONE ctermfg=30 cterm=NONE
hi TSField guifg=#007777 gui=NONE ctermfg=30 cterm=NONE
hi TSComment guifg=#005500 gui=NONE ctermfg=22 cterm=NONE

" LSP
hi LspDiagnosticsDefaultError guifg=#880000 guibg=NONE gui=bold ctermfg=88 ctermbg=NONE cterm=bold
hi LspDiagnosticsDefaultWarning guifg=#888838 guibg=NONE gui=bold ctermfg=136 ctermbg=NONE cterm=bold
hi LspDiagnosticsDefaultInformation guifg=#005500 guibg=NONE gui=bold ctermfg=22 ctermbg=NONE cterm=bold
hi LspDiagnosticsDefaultHint guifg=#007777 guibg=NONE gui=bold ctermfg=30 ctermbg=NONE cterm=bold

" Floating windows
hi NormalFloat guibg=#E5E5D0 guifg=#444444 ctermbg=252 ctermfg=239
hi FloatBorder guibg=#E5E5D0 guifg=#444444 ctermbg=252 ctermfg=239

" Pmenu
hi Pmenu guifg=#444444 guibg=#E5E5D0 ctermfg=239 ctermbg=252
hi PmenuSel guifg=#E5E5D0 guibg=#1054AF ctermfg=252 ctermbg=32
hi PmenuSbar guibg=#E5E5D0 ctermbg=252
hi PmenuThumb guibg=#444444 ctermbg=239

" Telescope
hi TelescopeNormal guifg=#444444 guibg=#FFFFE8 ctermfg=239 ctermbg=230
hi TelescopeBorder guifg=#FFFFE8 guibg=#FFFFE8 ctermfg=230 ctermbg=230
hi TelescopePromptNormal guifg=#444444 guibg=#E5E5D0 ctermfg=239 ctermbg=252
hi TelescopePromptBorder guifg=#E5E5D0 guibg=#E5E5D0 ctermfg=252 ctermbg=252
hi TelescopePromptTitle guifg=#E5E5D0 guibg=#1054AF ctermfg=252 ctermbg=32
hi TelescopePreviewTitle guifg=#E5E5D0 guibg=#005500 ctermfg=252 ctermbg=22
hi TelescopeResultsTitle guifg=#E5E5D0 guibg=#007777 ctermfg=252 ctermbg=30

