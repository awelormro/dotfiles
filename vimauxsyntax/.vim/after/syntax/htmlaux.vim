if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'htmlaux'
endif

let s:cpo_save = &cpo
set cpo&vim

syntax spell toplevel

" syn include @htmlXml syntax/xml.vim
" unlet b:current_syntax

syn case ignore

" mark illegal characters
let b:current_syntax = "htmlaux"


" Vim syntax file for HTML
syntax match htmlTag "<[^>]\+>"
syntax match htmlCloseTag "</[^>]\+>+"
syntax match htmlTagName "\<<[A-Za-z0-9]\+\>"
syntax match htmlAttribute "\<[A-Za-z0-9]\+="
syntax region htmlClose start=+</+	   end=+>+ contains=htmlTagName
highlight link htmlTag Statement
highlight link htmlCloseTag Statement
highlight link htmlTagName Type
highlight link htmlAttribute Identifier

if main_syntax == 'htmlaux'
  unlet main_syntax
endif

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
