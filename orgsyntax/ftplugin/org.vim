" vim: set fdm=marker:


" Info of the plugin {{{1
" Vim filetype plugin
" Language:     org
" Maintainer:   Awelormro <https://github.com/tpope/vim-abuorgsimple>
" Last Change:  2023 Sep 26

if exists("b:did_ftplugin")
  finish
endif
" b:did_ftplugin = 1

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim

" Add the filetype {{{1
let s:keepcpo= &cpo
set cpo&vim

" Get the variables {{{1
let g:org_auto_linebreak = get(g:, 'org_linebreaks_auto',    1)
" Fold method plugin {{{1
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

" Checklist and To-do settings {{{1
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
        let new_line = substitute(line,  '* TODO ',  '* DONE ', '')
        " Reemplazar la línea actual con la nueva línea modificada
        call setline('.', new_line)
    elseif line =~ '\*\sDONE'
        let new_line = substitute(line,  '* DONE ',  '* ', '')
        call setline('.',new_line)
    elseif line =~ '\*\s'
        let new_line = substitute(line,  '* ',  '* TODO ', '')
        call setline('.',new_line)
    endif
endfunction

" Separation and line width settings {{{1
function! OrgSeparation()
  let &textwidth=78
  let line=getline('.')
  echo 1
  " let tewid=&textwidth
  " echo tewid
endfunction
function! AddOrgspaces()
  let line=getline('.')
  if line ~= 1
    echo 1
  endif
endfunction
setlocal foldexpr=OrgFold()
setlocal foldmethod=expr

" Go to link {{{1
function! OrgGotoLink()
  let pos=col(".")
  normal f[
  echo 'pendejada hecha'
endfunction
[[[]]]
" Auto command settings {{{1
if g:org_auto_linebreak ==1
  autocmd TextChangedI *.org call OrgSeparation()
endif
" let &cpo = s:keepcpo
" unlet s:keepcpo
