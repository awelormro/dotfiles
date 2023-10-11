" if !exists("main_syntax")
"   if exists("b:current_syntax")
"     finish
"   endif
"   let main_syntax = 'htmlaux'
" endif

let b:current_syntax = 'htmlaux'

" Vim syntax file for HTML
syntax match htmlTag "+<[^>]\+>"
syntax match htmlCloseTag "</[^>]\+>"
syntax match htmlTagName "\<<[A-Za-z0-9]\+\>"
syntax match htmlAttribute "\<[A-Za-z0-9]\+="
highlight link htmlTag Statement
highlight link htmlCloseTag Statement
highlight link htmlTagName Type
highlight link htmlAttribute Identifier

" Vim syntax file for HTML
let s:cpo_save = &cpo
set cpo&vim
