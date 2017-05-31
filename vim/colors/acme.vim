hi clear 

let g:colors_name = "acme"

let s:white = "#ffffff"
let s:black = "#000000"
let s:pale_yellow = "#ffffea"
let s:dark_yellow = "#eeee9e"
let s:dark_green = "#99994c"
let s:pale_blue = "#eaffff"
let s:cyan = "#9eeeee"
let s:purple = "#8888cc"
let s:blue = "#000099"
let s:red = "#aa0000"
let s:green = "#006600"

exe 'hi! Normal guibg='.s:pale_yellow.' guifg='.s:black.' ctermbg=230 ctermfg=232 '
exe 'hi! NonText guibg=bg guifg='.s:red.' ctermbg=bg ctermfg=230'
exe 'hi! StatusLine guibg='.s:purple.' guifg='.s:white.' gui=NONE ctermbg=159 ctermfg=232 cterm=NONE'
exe 'hi! StatusLineNC guibg='.s:pale_blue.' guifg='.s:black.' gui=NONE ctermbg=194 ctermfg=232 cterm=NONE'
exe 'hi! WildMenu guibg='.s:black.' guifg='.s:pale_blue.' gui=NONE ctermbg=black ctermfg=159 cterm=NONE'
exe 'hi! VertSplit guibg='.s:pale_yellow.' guifg='.s:dark_green.' gui=NONE ctermbg=159 ctermfg=232 cterm=NONE'
exe 'hi! Folded guibg='.s:dark_green.' guifg=fg gui=italic ctermbg=187 ctermfg=fg cterm=italic'
exe 'hi! FoldColumn guibg='.s:dark_green.' guifg=fg ctermbg=229 ctermfg=fg'
exe 'hi! SignColumn guibg='.s:dark_green.' guifg=fg ctermbg=229 ctermfg=fg'
exe 'hi! Conceal guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! LineNr guibg=bg guifg='.s:dark_green.' gui=italic ctermbg=bg ctermfg=239 cterm=italic'
exe 'hi! Visual guibg='.s:dark_yellow.' guifg=fg ctermbg=fg ctermfg=bg'
exe 'hi! CursorLine guibg='.s:dark_yellow.' guifg=fg ctermbg=230 ctermfg=fg'
exe 'hi! CursorLineNR guibg=bg guifg='.s:dark_green.' ctermbg=230 ctermfg=fg'
exe 'hi! Cursor guibg='.s:dark_green.' guifg=fg ctermbg=230 ctermfg=fg'
exe 'hi! MatchParen guibg='.s:green.' guifg='.s:white.' ctermbg=230 ctermfg=fg'
exe 'hi! Search guibg='.s:green.' guifg='.s:white.' ctermbg=230 ctermfg=fg'
exe 'hi! ErrorMsg guibg='.s:red.' guifg='.s:white.' ctermbg=230 ctermfg=fg'

exe 'hi! Pmenu guibg='.s:dark_yellow.' guifg='.s:black.' ctermbg=230 ctermfg=fg'
exe 'hi! PmenuSel guibg='.s:green.' guifg='.s:white.' ctermbg=230 ctermfg=fg'
exe 'hi! PmenuSbar guibg='.s:dark_green.' guifg='.s:black.' ctermbg=230 ctermfg=fg'
exe 'hi! PmenuThumb guibg='.s:dark_yellow.' guifg='.s:black.' ctermbg=230 ctermfg=fg'

exe 'hi! TabLineFill guibg='.s:pale_blue.' guifg='.s:pale_blue.' gui=NONE ctermbg=230 ctermfg=fg'
exe 'hi! TabLine guibg='.s:pale_blue.' guifg='.s:black.' gui=NONE ctermbg=230 ctermfg=fg'
exe 'hi! TabLineSel guibg='.s:purple.' guifg='.s:white.' gui=NONE ctermbg=230 ctermfg=fg'

" Syntax
exe 'hi! Comment guibg=bg guifg='.s:dark_green.' gui=NONE ctermbg=bg ctermfg=236 cterm=NONE'
exe 'hi! Todo guibg=bg guifg='.s:dark_green.' gui=NONE ctermbg=bg ctermfg=236 cterm=NONE'

exe 'hi! Statement guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Identifier guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Type guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! PreProc guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Constant guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Special guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! SpecialKey guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Directory guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE'
exe 'hi! Error guibg='.s:red.' guifg='.s:white.' gui=NONE ctermbg=230 ctermfg=fg'

exe 'hi! link Title StatusLine'
exe 'hi! link MoreMsg Comment'
exe 'hi! link Question Comment'

" vim
hi link vimFunction Identifier

