" vim: set fdm=marker:
"
" Vim syntax file
" Language:     org
" Maintainer:   Awelormro <https://github.com/tpope/vim-org>
" Filenames:    *.org
" Last Change:  2023 Sep 26
" Syntax declaration {{{1
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "org"

" Match sections {{{1
" Section to highlight titles and keywords {{{2
syntax match orgheaders /^#+\(\w\+\)/
syntax match OrgTitle1 /\_^\*\s.*/
syntax match OrgTitle2 /\_^\*\* .*/
syntax match OrgTitle3 /\_^\*\*\* .*/
syntax match OrgTitle4 /\_^\*\*\*\* .*/
syntax match OrgTitle5 /\_^\*\*\*\*\* .*/
syntax match OrgTitle6 /\_^\*\*\*\*\*\* .*/

syntax match MiReferenciaBibliografica /\[cite:[^]]*\]/
" List syntax Highlight {{{2
syntax match MiListaNumerada /^\s*\d\{1,4}\.\s/
syntax match MiListaNoOrdenada /^\s*[-+*]\s/
syntax match MiListaToDo /^[-+*]\s\[[ X]\]\s/
syntax match OrgComment1 /^\s#\s.*/
syntax match OrgComment2 /#\s.*/

" Link sections {{{2
syntax match OrgLink /\[\[.*\]\]/
" Regular text Highlight {{{2
syntax match orgbolds /\*\zs[^*]\+\ze\*/
syntax match orgitals /\/\zs[^/]\+\ze\//
syntax match orgboit1 /\*\/\zs[^*]\+\ze\/\*/
syntax match orgboit2 /\/\*\zs[^*]\+\ze\*\//
syntax match orgstrike  /+\zs[^+]\+\ze+/
syntax match orgmonos /=\zs[^=]\+\ze=/
syntax match orgverb /\~\zs[^~]\+\ze\~/
syntax match orgundl /_\zs[^_]\+\ze_/


" Syntax latex {{{2
syntax match orgtex /\\[a-zA-Z@]\+\>/
syntax match contintex /{[a-zA-Z@]\+}/
syntax match spaceintex /\\\\/
syntax match sepintex /&/
syntax match texequ /\$[a-zA-Z@+\=\-\*\/\\0-9\s\^]\+\$/
syntax match texequ3 /\$[.*]\+\$/
syntax match texequ2 /\$\$[a-zA-Z@+=\-\*\/\\0-9]\+\$\$/
" Highlight section {{{1
" Custom Highlight creations {{{2

hi OrgItalic gui=italic term=italic cterm=italic
hi OrgBold gui=bold term=bold cterm=bold
hi OrgBoIt gui=bold,italic term=bold,italic, cterm=bold,italic
hi OrgStrike gui=strikethrough term=strikethrough cterm=strikethrough


" Highlight Titles {{{2
hi def link MiTitulo Title
hi def link orgheaders     Title
hi def link OrgTitle1 Title
hi def link OrgTitle2 Float
hi def link orglists Float
hi def link OrgTitle3 Function
hi def link OrgTitle4 Conditional
hi def link OrgTitle5 Repeat
hi def link OrgTitle6 Label

" Highlight Links {{{2
hi def link OrgLink Label
" hi link OrgLink Label
" Highlight List features {{{2
highlight link MiListaNumerada Number
highlight link MiListaNoOrdenada Special
highlight link MiListaToDo Todo
highlight link MiReferenciaBibliografica Operator

" Highlight text form {{{2
hi def link orgbolds OrgBold
hi def link orgitals OrgItalic
hi def link orgboit1 OrgBoIt
hi def link orgboit2 OrgBoIt
hi def link orgstrike OrgStrike
hi def link orgmonos PmenuSel
hi def link orgverb Folded
hi def link orgundl Underlined
hi def link OrgComment1 Comment
hi def link OrgComment2 Comment
hi def link Orglinks Comment
" Highlight Auxiliar features {{{2
hi def link orgtex Function
hi def link contintex Label
hi def link texequ Keyword
hi def link texequ2 Keyword
hi def link spaceintex Conditional
hi def link sepintex Conditional
hi def link texequ3 Conditional
" Auxiliar highlight names {{{2
" String      
" Character   
" Number      
" Boolean     
" Float       
" Function    
" Conditional 
" Repeat      
" Label       
" Operator    
" Keyword     
" Exception   
" Include     
" Define      
" Macro       
" PreCondit   
" StorageClass
" Hyperlinks: {{{1
syntax match hyperlink	"\[\{2}[^][]*\(\]\[[^][]*\)\?\]\{2}" contains=hyperlinkBracketsLeft,hyperlinkURL,hyperlinkBracketsRight containedin=ALL
syntax match hyperlinkBracketsLeft	contained "\[\{2}"     conceal
syntax match hyperlinkURL				    contained "[^][]*\]\[" conceal
syntax match hyperlinkBracketsRight	contained "\]\{2}"     conceal
hi def link hyperlink Underlined
