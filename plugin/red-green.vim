" red-green.vim - Simple plugin for displaying a red/green bar with text
" Maintainer:   Jim Fitzpatrick
" Version:      0.0.1
" License:      MIT License

if &cp || exists("g:redgreen_loaded") && g:redgreen_loaded
    finish
endif
let g:redgreen_loaded = 1

if (!hlexists('GreenBar'))
    hi GreenBar term=reverse ctermfg=black ctermbg=green guifg=black guibg=green
endif
if (!hlexists('RedBar'))
    hi RedBar   term=reverse ctermfg=black ctermbg=red   guifg=black guibg=red3
endif

function GreenBar(msg)
    echohl GreenBar
    echon a:msg repeat(" ", &columns - strwidth(a:msg) - 1)
    echohl None
endfunction

function RedBar(msg)
    echohl RedBar
    echon a:msg repeat(" ", &columns - strwidth(a:msg) - 1)
    echohl None
endfunction
