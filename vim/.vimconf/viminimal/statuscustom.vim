
" vim: set fdm=marker:
" Minimal statusline {{{1

" Status Line Custom {{{2
let g:currentmode={
    \ 'n'  : 'N',
    \ 'no' : 'N-Op',
    \ 'v'  : 'V',
    \ 'V'  : 'V-Ln',
    \ '^V' : 'V-Bl',
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
" custom highlight groups {{{2
" hi! def link StatusLine Normal
" status bar colors
function Generatecustomhl(HlIn,HlAux,HlOut,HlProperty,HlBackground,HlPart)
  let LinkedProperty=synIDattr(hlID(a:HlIn), a:HlProperty, a:HlBackground)
  if empty(LinkedProperty)
    let LinkedProperty=synIDattr(hlID(a:HlAux),a:HlProperty,a:HlBackground)
  endif
  if empty(LinkedProperty)
    return ''
  else
    return a:HlPart.'='.LinkedProperty
  endif
endfunction

function GenerateHl(StyleText,StyleBorders)
  let guifg=Generatecustomhl('StatusLine','Normal','Boolean','bg','GUI','guifg')
  let guibg=Generatecustomhl('StatusLine','Normal','Boolean','fg','GUI','guibg')
  let ctermfg=Generatecustomhl('StatusLine','Normal','Boolean','bg','cterm','ctermfg')
  let ctermbg=Generatecustomhl('StatusLine','Normal','Boolean','fg','cterm','ctermbg')
  " let g: guibg.' '.guifg.' '.ctermfg.' '.ctermbg
  execute 'hi '
endfunction

function Configurehighlighseps(hiname,hiname2,hl1,hl2)
  let Linkfg1=synIDattr(hlID(a:hl1),'fg','cterm')
  if empty(Linkfg1)
    let Linkfg1=synIDattr(hlID(a:hl1),'fg','cterm')
  endif
  let Linkfg2=synIDattr(hlID(a:hl2),'bg','cterm')
  if empty(Linkfg2)
    let Linkfg2=synIDattr(hlID(a:hl2),'bg','cterm')
  endif
  let Linkfg3=synIDattr(hlID(a:hl1),'fg')
  if empty(Linkfg3)
    let Linkfg3=synIDattr(hlID(a:hl1),'fg')
  endif
  let Linkfg4=synIDattr(hlID(a:hl2),'bg')
  if empty(Linkfg4)
    let Linkfg4=synIDattr(hlID(a:hl2),'bg')
  endif
  if (empty(Linkfg1) || empty(Linkfg2))==1 || (empty(Linkfg1) && empty(Linkfg2))==1
    echo "no ctermargs"
    execute "hi ".a:hiname." guibg=".Linkfg3." guifg=".Linkfg4
    execute "hi ".a:hiname2." guibg=".Linkfg4." guifg=".Linkfg3
  elseif (empty(Linkfg3)==1 || empty(Linkfg3))==1 ||  (empty(Linkfg3)==1 && empty(Linkfg3))==1
    echo "no guiargs"
    execute "hi ".a:hiname." ctermbg=".Linkfg1." ctermfg=".Linkfg2
    execute "hi ".a:hiname2." ctermbg=".Linkfg2." ctermfg=".Linkfg1
  else
    execute "hi ".a:hiname." ctermbg=".Linkfg1." ctermfg=".Linkfg2." guibg=".Linkfg3." guifg=".Linkfg4
    execute "hi ".a:hiname2." ctermbg=".Linkfg2." ctermfg=".Linkfg1." guibg=".Linkfg4." guifg=".Linkfg3
  endif
endfunction
" call Configurehighlighseps("Custom2","Custom1","StatusLine","Normal")
" autocmd ColorScheme * call Configurehighlighseps("Custom2","Custom1","StatusLine","Normal")
" Statusline configuration {{{2
set laststatus=2
set noshowmode
set statusline=
" set statusline+=%#IsModified#%{&mod?expand('%'):''}%*%#IsNotModified#%{&mod?'':expand('%')}%*
set statusline+=%0#Custom1#
set statusline+=%#Custom2#\%{toupper(g:currentmode[mode()])}  " The current mode
set statusline+=%0#Custom1#\
set statusline+=%0#MoreMsg#\
set statusline+=%#MoreMsg#%<%F%m%r%h%w.15                       " File path, modified, readonly, helpfile, preview
set statusline+=%#MoreMsg#                                     " Separator
set statusline+=%0#Custom1#
set statusline+=%0#Custom2#%n                                 " Buffer number
set statusline+=%0#Custom1#\
set statusline+=%0#MoreMsg#\
set statusline+=%2*%Y\                                 " FileType
set statusline+=%2#FoldColumn#\ %{WebDevIconsGetFileTypeSymbol()}\ 
" set statusline+=%3*\ │                                     " Separator
set statusline+=%#MoreMsg#\                               " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%3*                                     " Separator
set statusline+=%2*:\ %02v\                         " Colomn number
set statusline+=%#MoreMsg#\                               " Separator
" set statusline+=%3*│                                     " Separator
set statusline+=%3*                                     " Separator
set statusline+=%1*\ :\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%1*\                                     " Separator

" hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
" hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
" hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
" hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
" }}}
