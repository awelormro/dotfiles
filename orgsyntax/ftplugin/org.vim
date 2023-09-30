
" Vim filetype plugin
" Language:     org
" Maintainer:   Awelormro <https://github.com/tpope/vim-abuorgsimple>
" Last Change:  2023 Sep 26

if exists("b:did_ftplugin")
  finish
endif
" b:did_ftplugin = 1

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim

" Section {{{1
let s:keepcpo= &cpo
set cpo&vim

function! s:NotCodeBlock(lnum) abort
  return synIDattr(synID(a:lnum, 1, 1), 'name') !=# 'OrgCodeBlock'
endfunction
function! OrgFold() abort
  let line = getline(v:lnum)

  if line =~# '^\*\+ ' && s:NotCodeBlock(v:lnum)
    return ">" . match(line, ' ')
  endif

  let nextline = getline(v:lnum + 1)
  if (line =~ '^.\+$') && (nextline =~ '^=\+$') && s:NotCodeBlock(v:lnum + 1)
    return ">1"
  endif

  if (line =~ '^.\+$') && (nextline =~ '^-\+$') && s:NotCodeBlock(v:lnum + 1)
    return ">2"
  endif

  return "="
endfunction
function! OrgChecklist()
    " Obtener la línea actual
    let line = getline('.')
    
    " Verificar si la línea comienza con un guión medio y si los siguientes cuatro caracteres son '- [ ]' o '- [x]'
    if line =~ '^\s-\s\[ \]'
        " Reemplazar '- [ ]' con '- [x]' o '- [x]' con '- [ ]'
        let new_line = substitute(line,  '- \[ \]',  '- \[x\]', '')
        " Reemplazar la línea actual con la nueva línea modificada
        call setline('.', new_line)
    elseif line =~ '^\s-\s\[x\]'
        let new_line = substitute(line, '- \[x\]',  '- \[ \]', '')
        call setline('.',new_line)
    endif
endfunction
function! OrgTODO()
    " Obtener la línea actual
    let line = getline('.')
    
    " Verificar si la línea comienza con un guión medio y si los siguientes cuatro caracteres son '- [ ]' o '- [x]'
    if line =~ '^\*\sTODO'
        " Reemplazar '- [ ]' con '- [x]' o '- [x]' con '- [ ]'
        let new_line = substitute(line,  '* TODO',  '* DONE', '')
        " Reemplazar la línea actual con la nueva línea modificada
        call setline('.', new_line)
    elseif line =~ '\*\sDONE'
        let new_line = substitute(line,  '* DONE',  '* ', '')
        call setline('.',new_line)
    elseif line =~ '\*\s'
        let new_line = substitute(line,  '* ',  '* TODO', '')
        call setline('.',new_line)
    endif
endfunction
function! OrgSeparation()
  let line=getline('.')
  echo "I'm in insert mode"
endfunction

setlocal foldexpr=OrgFold()
setlocal foldmethod=expr

autocmd TextChangedI call OrgSeparation()
" let &cpo = s:keepcpo
" unlet s:keepcpo
