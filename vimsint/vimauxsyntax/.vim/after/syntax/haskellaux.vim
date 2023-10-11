
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "haskellaux"
syntax keyword haskellKeyword if then else case of let in where data type class instance
syntax keyword haskellFunction map filter foldr foldl
syntax keyword haskellSpecial True False
syntax match haskellString "['\"][^'\"]\+['\"]"
syntax match haskellNumber "\<[0-9]\+\>"
syntax match haskellComment "--.*$"

highlight link haskellKeyword Keyword
highlight link haskellFunction Function
highlight link haskellSpecial Boolean
highlight link haskellString String
highlight link haskellNumber Number
highlight link haskellComment Comment
