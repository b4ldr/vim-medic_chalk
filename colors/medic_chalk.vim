" Vim color scheme
" Name:         medicchalk.vim
" Author:       Konnor Rogers <konnor7414@gmail.com>
" Version:      1.0
" GetLatestVimScripts: 1891 1 :AutoInstall: medicchalk.vim

" Based on the VividChalk colorscheme made by Tpope which is based on Vibrant Ink
" Distributable under the same terms as Vim itself (see :help license)

if has("gui_running") && &background !=# 'dark'
    set background=dark
endif
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "medic_chalk"

function! s:hifg(group,guifg,first,second,...)
    let ctermfg = a:second
    exe "highlight ".a:group." guifg=".a:guifg." ctermfg=".ctermfg
endfunction

function! s:hibg(group,guibg,first,second)
    let ctermbg = a:second
    exe "highlight ".a:group." guibg=".a:guibg." ctermbg=".ctermbg
endfunction

hi link rubyDefine          Keyword
hi link rubySymbol          Constant
hi link rubyEval            rubyMethod
hi link rubyException       rubyMethod
hi link rubyInclude         rubyMethod
hi link rubyMacro           rubyMethod
hi link rubyStringDelimiter rubyString
hi link rubyRegexp          Regexp
hi link rubyRegexpDelimiter rubyRegexp

hi link javascriptRegexpString  Regexp

hi link diffAdded               String
hi link diffRemoved             Statement
hi link diffLine                PreProc
hi link diffSubname             Comment

call s:hifg("Normal","#BBBBBB","LightGrey",250)
if &background == "light" || has("gui_running")
    hi Normal guibg=Black ctermbg=Black
else
    hi Normal guibg=Black ctermbg=NONE
endif
"if &t_Co == 256
    "highlight StatusLine ctermbg=117
"else
    "highlight StatusLine ctermbg=43
"endif

highlight Todo          ctermbg=NONE cterm=bold ctermfg=DarkMagenta
highlight Ignore        ctermfg=Black
highlight WildMenu      guifg=Black   guibg=#ffff00 gui=bold ctermfg=Black ctermbg=Yellow cterm=bold
highlight Cursor        guifg=Black guibg=White ctermfg=Black ctermbg=White
highlight NonText       guifg=#404040 ctermfg=8
highlight SpecialKey    guifg=#404040 ctermfg=8
highlight Directory     none
high link Directory     Identifier
highlight ErrorMsg      guibg=Red ctermbg=DarkRed guifg=NONE ctermfg=NONE
highlight Search        guifg=NONE ctermfg=NONE gui=none cterm=none
call s:hibg("Search"    ,"#005fd7","DodgerBlue3",26)
highlight IncSearch     guifg=White guibg=Black ctermfg=White ctermbg=Black
highlight MoreMsg       guifg=#00AA00 ctermfg=Green
highlight LineNr        guifg=#DDEEFF ctermfg=White
highlight Question      none
high link Question      MoreMsg
highlight Title         guifg=Magenta ctermfg=Magenta
highlight VisualNOS     gui=none cterm=none
call s:hibg("Visual"    ,"#87afff","SkyBlue2",111)
call s:hibg("VisualNOS" ,"#8787ff","LightSlateBlue",105)
highlight WarningMsg    guifg=Red ctermfg=Red
highlight Error         ctermbg=DarkRed
highlight SpellBad      ctermfg=NONE cterm=underline ctermbg=NONE
" FIXME: Comments
highlight SpellRare     ctermfg=DarkMagenta cterm=underline ctermbg=NONE
highlight SpellCap      ctermfg=DarkBlue cterm=underline ctermbg=NONE
highlight SpellLocal    ctermfg=DarkCyan cterm=underline ctermbg=NONE

call s:hibg("Folded"    ,"#005f00","DarkGreen",22)
call s:hifg("Folded"    ,"#00ffff","Cyan1",51)
highlight FoldColumn    none
high link FoldColumn    Folded
highlight DiffAdd       ctermbg=4 guibg=DarkBlue
highlight DiffChange    ctermbg=5 guibg=DarkMagenta
highlight DiffDelete    ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
highlight DiffText      ctermbg=DarkRed
highlight DiffText      cterm=bold ctermbg=9 gui=bold guibg=Red

highlight TabLine       gui=underline cterm=underline
call s:hifg("TabLine"   ,"#BBBBBB","LightGrey",250)
call s:hibg("TabLine"   ,"#3a3a3a","Grey23",237)
highlight TabLineSel    guifg=White guibg=Black ctermfg=White ctermbg=Black
highlight TabLineFill   gui=underline cterm=underline
call s:hifg("TabLineFill"   ,"#BBBBBB","LightGrey",250)
call s:hibg("TabLineFill","#808080","Grey50",244)

hi Type gui=none
hi Statement gui=none
if !has("gui_mac")
    " Mac GUI degrades italics to ugly underlining.
    hi Comment gui=italic
endif
hi Identifier cterm=none
call s:hifg("Comment"        ,"#8700d7","DarkViolet",92)
call s:hifg("Constant"       ,"	#008787","Turquoise4",30)
call s:hifg("String"         ,"	#800080","Purple", 5)
call s:hifg("Identifier"     ,"#5f875f","DarkSeaGreen4",65)
call s:hifg("Function"       ,"#44B4CC","DarkCyan",36)
call s:hifg("Statement"      ,"#FF6600","Brown",202)
call s:hifg("PreProc"        ,"#AAFFFF","LightCyan",213)
call s:hifg("Type"           ,"#AAAA77","Grey",101)
call s:hifg("Special"        ,"#33AA00","DarkMagenta",7)
call s:hifg("Regexp"         ,"#44B4CC","DarkCyan",74)
call s:hifg("rubyMethod"     ,"#DDE93D","Yellow",191)

" My modifications

highlight StatusLine   guibg=#aabbee guifg=#000000 ctermbg=14 ctermfg=0 cterm=NONE gui=NONE
highlight StatusLineNC guibg=#aabbee guifg=#000000 ctermbg=14 ctermfg=0 cterm=inverse gui=inverse

highlight MatchParen ctermbg=8 ctermfg=2 cterm=NONE guibg=#111111 guifg=#66FF00 gui=NONE

" Various columns
highlight VertSplit ctermbg=8 ctermfg=8 guibg=#111111 guifg=#111111
highlight ColorColumn ctermbg=8 guibg=#111111
highlight CursorColumn ctermbg=8 guibg=#111111
highlight SignColumn ctermbg=NONE guibg=NONE
highlight CursorLine ctermbg=8 guibg=#111111 cterm=NONE gui=NONE

" Autocompletion
highlight Pmenu      ctermbg=00 ctermfg=15 guibg=#000000  guifg=#ffffff gui=NONE cterm=NONE
highlight PmenuSel   ctermbg=05 ctermfg=07 guibg=#AA1BF2  guifg=#ffffff gui=NONE cterm=NONE
highlight PmenuSbar  ctermbg=07 guibg=#FFFFFF
highlight PmenuThumb ctermbg=15 guibg=#808080

highlight WhiteSpace ctermfg=15 guifg=#808080

highlight link NERDTreeDir Constant
