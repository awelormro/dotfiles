
" Declarar sintaxis como Ruby
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "jsaux"
syntax keyword javascriptStatement if for while switch do try catch finally return throw
syntax keyword javascriptFunction function
syntax keyword javascriptOperator instanceof in typeof
syntax keyword javascriptSpecial null undefined NaN Infinity
syntax keyword javascriptBoolean true false
syntax match javascriptString "['\"][^'\"]\+['\"]"
syntax match javascriptNumber "\<[0-9]\+\>"
syntax match javascriptComment "//.*$"

highlight link javascriptStatement Statement
highlight link javascriptFunction Function
highlight link javascriptOperator Operator
highlight link javascriptSpecial Special
highlight link javascriptBoolean Boolean
highlight link javascriptString String
highlight link javascriptNumber Number
highlight link javascriptComment Comment
