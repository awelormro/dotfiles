" vim: set fdm=marker:

" Minimal statusline {{{1

" Status Line Custom {{{2
let g:currentmode={
    \ 'n'  : 'N',
    \ 'no' : 'N-Op',
    \ 'v'  : 'V',
    \ 'V'  : 'V-Ln',
    \ "^V" : 'Vbl',
    \ "\<C-V>" :"Vbl",
    \ 's'  : 'S',
    \ 'S'  : 'S-Ln',
    \ '^S' : 'S-Bl',
    \ 'i'  : 'I',
    \ 'R'  : 'Rp',
    \ 'Rv' : 'V-Rp',
    \ 'c'  : 'C',
    \ 'cv' : 'Vim-Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Pr',
    \ 'rm' : '+',
    \ 'r?' : '?',
    \ '!'  : 'Sh',
    \ 't'  : 'T'
    \}

" New Color pallette obtention {{{2
function ConfigureHighlights(theme1,nm1,nm2)
 let stlinebg = synIDattr(hlID('Normal'),'bg', 'GUI')
 let custbg = synIDattr(hlID(a:theme1),'fg', 'GUI')
 "echo stlinebg
 "echo custbg 
 exe 'hi '.a:nm1.' guibg='.stlinebg.' guifg='.custbg
 if &background=='dark'
   exe 'hi '.a:nm2.' guifg=#223355 guibg='.custbg
 else
   exe 'hi '.a:nm2.' guifg=#FafaFa guibg='.custbg
 endif
endfunction

function CreateHighlights()
  call ConfigureHighlights('Constant','Custom1','Custom2')
  call ConfigureHighlights('MoreMsg','Custom3','Custom4')
  call ConfigureHighlights('NonText','Custom5','Custom6')
  call ConfigureHighlights('Type','Custom7','Custom8')
endfunction

call CreateHighlights()
autocmd ColorScheme * call CreateHighlights()
" }}}"
" Active Statusline configuration {{{2
set laststatus=2
set noshowmode
function ActiveStatusline()
set statusline=
set statusline+=%0#Custom1#
set statusline+=%#Custom2#\%{toupper(g:currentmode[mode()])}  " The current mode
set statusline+=%0#Custom1#\
set statusline+=%0#Custom3#\
set statusline+=%#Custom4#%{pathshorten(expand('%'))}         " File path, modified, readonly, helpfile, preview
set statusline+=%#Custom3#\                                     " Separator
set statusline+=%0#Custom7#
set statusline+=%0#Custom8#%n                                 " Buffer number
set statusline+=%0#Custom7#\
set statusline+=%0#Custom5#\
set statusline+=%2#Custom6#%Y                                 " FileType
set statusline+=%#Custom5#                                   " Separator
set statusline+=%0#Custom1#
set statusline+=%2#Custom2#%{''.(&fenc!=''?&fenc:&enc).''}    " Encoding
set statusline+=%0#Custom1#\
set statusline+=%0#Custom7#
set statusline+=%0#Custom8#%{&ff}                             " FileFormat (dos/unix..)
set statusline+=%#Custom7#                                   " Separator
set statusline+=%=                                            " Right Side
set statusline+=%0#Custom1#
set statusline+=%2#Custom2#:\ %02v\                          " Colomn number
set statusline+=%1#Custom2#:\ %02l/%L
set statusline+=%0#Custom1#\
set statusline+=%0#Custom5#
set statusline+=%#Custom6#%3p%%                              " Line number / total lines, percentage of document
set statusline+=%0#Custom5#\                                " Separator
endfunction

call ActiveStatusline()
" }}}
" Inactuve statusline {{{
function InactiveStatusline()
setlocal statusline=%<%F%m%r%h%w.15                        " File path, modified, readonly, helpfile, preview
endfunction
" }}}"

"
"
" Forgotten functions {{{

"set statusline+=%0#Custom1#\
"set statusline+=%#SpellCap#                                 " Separator
" set statusline+=%3*│                                        " Separator
"set statusline+=%0#Custom1#
"set statusline+=%#Custom4#%<%F%m%r%h%w.15                    " File path, modified, readonly, helpfile, preview
"set statusline+=%#Custom4#\%{fnamemodify([:fname:], ':~:.:gs%\(\.\?[^/]\)[^/]*/%\1/%')}
" }}}"
