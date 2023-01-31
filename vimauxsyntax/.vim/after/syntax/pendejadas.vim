
" if main_syntax != 'java' || exists("java_javascript")
  " JAVA SCRIPT
  " syn include @htmlJavaScript syntax/javascript.vim
  " unlet b:current_syntax
  " syn region  javaScript start=+<script\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
  " syn region  htmlScriptTag	contained start=+<script+ end=+>+ fold contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent
  " hi def link htmlScriptTag htmlTag

  " html events (i.e. arguments that include javascript commands)
  " if exists("html_extended_events")
  "   syn region htmlEvent	contained start=+\<on\a\+\s*=[\t ]*'+ end=+'+ contains=htmlEventSQ
  "   syn region htmlEvent	contained start=+\<on\a\+\s*=[\t ]*"+ end=+"+ contains=htmlEventDQ
  " else
  "   syn region htmlEvent	contained start=+\<on\a\+\s*=[\t ]*'+ end=+'+ keepend contains=htmlEventSQ
  "   syn region htmlEvent	contained start=+\<on\a\+\s*=[\t ]*"+ end=+"+ keepend contains=htmlEventDQ
  " endif
  " syn region htmlEventSQ	contained start=+'+ms=s+1 end=+'+me=s-1 contains=@htmlJavaScript
  " syn region htmlEventDQ	contained start=+"+ms=s+1 end=+"+me=s-1 contains=@htmlJavaScript
  " hi def link htmlEventSQ htmlEvent
  " hi def link htmlEventDQ htmlEvent

  " a javascript expression is used as an arg value
  " syn region  javaScriptExpression contained start=+&{+ keepend end=+};+ contains=@htmlJavaScript,@htmlPreproc
" endif

" if main_syntax != 'java' || exists("java_vb")
  " VB SCRIPT
  " syn include @htmlVbScript syntax/vb.vim
  " unlet b:current_syntax
  " syn region  javaScript start=+<script \_[^>]*language *=\_[^>]*vbscript\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlVbScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
" endif

" syn cluster htmlJavaScript	add=@htmlPreproc

" if main_syntax != 'java' || exists("java_css")
  " " embedded style sheets
  " syn keyword htmlArg		contained media
  " syn include @htmlCss syntax/css.vim
  " unlet b:current_syntax
  " syn region cssStyle start=+<style+ keepend end=+</style>+ contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc
  " syn region htmlCssDefinition matchgroup=htmlArg start='style="' keepend matchgroup=htmlString end='"' contains=css.*Attr,css.*Prop,cssComment,cssLength,cssColor,cssURL,cssImportant,cssError,cssString,@htmlPreproc
  " hi def link htmlStyleArg htmlString
" endif

" if main_syntax == "html"
  " synchronizing (does not always work if a comment includes legal
  " html tags, but doing it right would mean to always start
  " at the first line, which is too slow)
  " syn sync match htmlHighlight groupthere NONE "<[/a-zA-Z]"
  " syn sync match htmlHighlight groupthere javaScript "<script"
  " syn sync match htmlHighlightSkip "^.*['\"].*$"
  " syn sync minlines=10
" endif

" Folding
" Originally by Ingo Karkat and Marcus Zanona
" if get(g:, "html_syntax_folding", 0)
"   syn region htmlFold start="<\z(\<\%(area\|base\|br\|col\|command\|embed\|hr\|img\|input\|keygen\|link\|meta\|param\|source\|track\|wbr\>\)\@![a-z-]\+\>\)\%(\_s*\_[^/]\?>\|\_s\_[^>]*\_[^>/]>\)" end="</\z1\_s*>" fold transparent keepend extend containedin=htmlHead,htmlH\d
"   " fold comments (the real ones and the old Netscape ones)
"   if exists("html_wrong_comments")
"     syn region htmlComment start=+<!--+ end=+--\s*>\%(\n\s*<!--\)\@!+ contains=@Spell fold
"   endif
" endif

" " Archivo de sintaxis de Vim para HTML

" " Declarar sintaxis como html
" if exists("b:current_syntax")
"   finish
" endif
" let b:current_syntax = "htmlaux"
" " File: html.vim
" " Author: Your name
" " Description: Syntax file for HTML with syn-region support

" " syntax match htmlTag "<\([a-zA-Z][a-zA-Z0-9]*\)\( [^>]*\)*>"
" " syntax match htmlTag "<\([a-zA-Z][a-zA-Z0-9]*\)\>"
" " syntax match htmlEndTag "</\([a-zA-Z][a-zA-Z0-9]*\)>"
" " syntax match htmlAttribute "[a-zA-Z]*=\(\"[^\"]*\"\|[^ \t>]*\)"

" " hi def link htmlTag Identifier
" " hi def link htmlEndTag Tag
" " hi def link htmlattribute Attribute

" syn region htmlContent start="<" end=">"

" " Define the syntax for HTML
" syntax region htmlTag start='<' end='>'
" syntax region htmlTagEnd start='</' end='\w\>'
" syntax region htmlTagName start='<\w\+' end='\s'
" syntax region htmlAttribute start='\w\+=' end='"'
" syntax region htmlComment start='<!--' end='-->'

" " Define the highlighting for HTML elements
" highlight default link htmlTagName Identifier
" highlight default link htmlContent Identifier
" highlight default link htmlEndTagEnd Identifier
" highlight default link htmlattribute Statement
" highlight default link htmlComment Comment

" " Define the syn-region for HTML
" syn region htmlTag start='<' end='>'
" syn region htmlTagName start='<\w\+' end='\s'
" syn region htmlTagEnd start='</' end='\w\>'
" syn region htmlattribute start='\w\+=' end='"'
" syn region htmlComment start='<!--' end='-->'
" Vim syntax file
" Language:		HTML
" Maintainer:		Doug Kearns <dougkearns@gmail.com>
" Previous Maintainers: Jorge Maldonado Ventura <jorgesumle@freakspot.net>
"			Claudio Fleiner <claudio@fleiner.com>
" Last Change:		2022 Nov 18

" Please check :help html.vim for some comments and a description of the options

" quit when a syntax file was already loaded
if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'htmlaux'
endif
