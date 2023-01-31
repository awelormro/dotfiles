" Nombre del archivo: ruby_aux.vim

" Declarar sintaxis como Ruby
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "ruby"

" Declarar región de sintaxis para comentarios de línea
syn region rubyComment start='#' end='$'

" Declarar región de sintaxis para strings de doble comilla
syn region rubyString start='"' end='"'

" Declarar región de sintaxis para strings de comilla simple
syn region rubyString start="'" end="'"

" Declarar región de sintaxis para símbolos
syn region rubySymbol start=':\w\+' end='\W'

" Declarar región de sintaxis para variables
syn region rubyVariable start='\w\+' end='\W'

" Declarar región de sintaxis para palabras reservadas
syn keyword rubyKeywords class def end if else elsif do while until for in case when module begin rescue ensure self super then break next redo retry return yield true false nil

" Asignar colores a las regiones de sintaxis
hi def link rubyComment Comment
hi def link rubyString String
hi link rubySymbol Constant
hi def link rubyVariable Identifier
hi def link rubyKeywords Keyword
