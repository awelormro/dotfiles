
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "vimscriptaux"
syntax keyword vimscriptStatement function command let if else while for call endfunction endif 
syntax keyword vimscriptOperator + - * / = == != >= <= < >
syntax keyword vimscriptSpecial v:true v:false v:null
syntax match vimscriptString "['\"][^'\"]\+['\"]"
syntax match vimscriptNumber "\<[0-9]\+\>"
syntax match vimscriptComment "\" .*$"

highlight link vimscriptStatement Statement
highlight link vimscriptOperator Operator
highlight link vimscriptSpecial Special
highlight link vimscriptString String
highlight link vimscriptNumber Number
highlight link vimscriptComment Comment
