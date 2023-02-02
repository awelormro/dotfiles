if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'htmlaux'
endif

<<<<<<< HEAD
let s:cpo_save = &cpo
set cpo&vim

syntax spell toplevel
=======
" Declarar sintaxis como html
" if exists('b:current_syntax')
"   finish
" endif
let b:current_syntax = 'html'
" let main_syntax = 'htmlaux'
" if !exists('main_syntax')
  " quit when a syntax file was already loaded
  " if exists('b:current_syntax')
  "   finish
  " endif
" endif
" elseif exists("b:current_syntax") && b:current_syntax == 'htmlaux'
"   finish
" endif

" let b:current_syntax = 'htmlaux'
" let main_syntax = 'htmlaux'
" if exists("b:current_syntax")
"   finish
" endif
let s:cpo_save = &cpo
set cpo&vim
" syntax spell toplevel
>>>>>>> 56483f51b94991bcd1ce6998c07450095c011aab

" syn include @htmlXml syntax/xml.vim
" unlet b:current_syntax

" syn case ignore

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

<<<<<<< HEAD
let &cpo = s:cpo_save
unlet s:cpo_save
=======
syn keyword htmlTagName		contained noscript
syn keyword htmlSpecialTagName	contained script style
oldfiles
" The default highlighting.
hi def link htmlTag			Function
hi def link htmlEndTag			Identifier
hi def link htmlArg			Type
hi def link htmlTagName			htmlStatement
hi def link htmlSpecialTagName		Exception
hi def link htmlMathTagName		htmlTagName
hi def link htmlSvgTagName		htmlTagName
hi def link htmlValue			String
hi def link htmlSpecialChar		Special

if !exists("html_no_rendering")
  hi def link htmlH1			  Title
  hi def link htmlH2			  htmlH1
  hi def link htmlH3			  htmlH2
  hi def link htmlH4			  htmlH3
  hi def link htmlH5			  htmlH4
  hi def link htmlH6			  htmlH5
  hi def link htmlHead			  PreProc
  hi def link htmlTitle			  Title
  hi def link htmlBoldItalicUnderline	  htmlBoldUnderlineItalic
  hi def link htmlUnderlineBold		  htmlBoldUnderline
  hi def link htmlUnderlineItalicBold	  htmlBoldUnderlineItalic
  hi def link htmlUnderlineBoldItalic	  htmlBoldUnderlineItalic
  hi def link htmlItalicUnderline	  htmlUnderlineItalic
  hi def link htmlItalicBold		  htmlBoldItalic
  hi def link htmlItalicBoldUnderline	  htmlBoldUnderlineItalic
  hi def link htmlItalicUnderlineBold	  htmlBoldUnderlineItalic
  hi def link htmlLink			  Underlined
  hi def link htmlLeadingSpace		  None
  if !exists("html_my_rendering")
    hi def htmlBold		   term=bold cterm=bold gui=bold
    hi def htmlBoldUnderline	   term=bold,underline cterm=bold,underline gui=bold,underline
    hi def htmlBoldItalic	   term=bold,italic cterm=bold,italic gui=bold,italic
    hi def htmlBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
    hi def htmlUnderline	   term=underline cterm=underline gui=underline
    hi def htmlUnderlineItalic	   term=italic,underline cterm=italic,underline gui=italic,underline
    hi def htmlItalic		   term=italic cterm=italic gui=italic
    if v:version > 800 || v:version == 800 && has("patch1038")
	hi def htmlStrike	       term=strikethrough cterm=strikethrough gui=strikethrough
    else
	hi def htmlStrike	       term=underline cterm=underline gui=underline
    endif
  endif
endif

hi def link htmlPreStmt		   PreProc
hi def link htmlPreError	   Error
hi def link htmlPreProc		   PreProc
hi def link htmlPreAttr		   String
hi def link htmlPreProcAttrName    PreProc
hi def link htmlPreProcAttrError   Error
hi def link htmlString		   String
hi def link htmlStatement	   Statement
hi def link htmlComment		   Comment
hi def link htmlCommentNested	   htmlError
hi def link htmlCommentError	   htmlError
hi def link htmlTagError	   htmlError
hi def link htmlEvent		   javaScript
hi def link htmlError		   Error

hi def link javaScript		   Special
hi def link javaScriptExpression   javaScript
hi def link htmlCssStyleComment    Comment
hi def link htmlCssDefinition	   Special

" let b:current_syntax = 'htmlaux'

" if main_syntax == 'htmlaux'
"   unlet main_syntax
" endif

" let &cpo = s:cpo_save
" unlet s:cpo_save
>>>>>>> 56483f51b94991bcd1ce6998c07450095c011aab
" vim: ts=8
