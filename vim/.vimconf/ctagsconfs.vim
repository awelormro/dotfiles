
" vim: set fdm=marker:
" 󰟔   Rmarkdown Tags {{{1
let g:tagbar_type_rmd = {
          \   'ctagstype':'rmd'
          \ , 'kinds':['h:header', 'c:chunk', 'f:function', 'v:variable']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header', 'c':'chunk'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/.dotfiles/ctags/.customctags/rmdctags.py'
          \ , 'ctagsargs': ''
          \ }
"  Markdown Tags {{{1
" 󰂽 Bibtex files {{{1
let g:tagbar_type_bib = {
    \ 'ctagstype' : 'bib',
    \ 'kinds'     : [
        \ 'a:Articles',
        \ 'b:Books',
        \ 'L:Booklets',
        \ 'c:Conferences',
        \ 'B:Inbook',
        \ 'C:Incollection',
        \ 'P:Inproceedings',
        \ 'm:Manuals',
        \ 'T:Masterstheses',
        \ 'M:Misc',
        \ 't:Phdtheses',
        \ 'p:Proceedings',
        \ 'r:Techreports',
        \ 'u:Unpublished',
    \ ]
\ }
"  Orgmode Ctags Config {{{1
let g:orgmodectagspyfile='/home/abu/.customctags/orgctags.py'

let g:tagbar_type_org = {
      \ 'ctagstype'	: 'org',
      \ 'kinds'		: [
      \ 'p:parts:0',
      \ 'c:chapter:0',
      \ 's:section:0',
      \ 'S:subsection:1',
      \ 't:subsubsection:1',
      \ 'T:l4subsection:1',
      \ 'u:l5subsection:1',
      \ ],
      \ "sort": 0,
      \ 'sro'			: '*',
      \ 'scope2kind'	: {
      \ 'chapter' : 'c',
      \ 'section' : 's',
      \ 'subsection' : 'S',
      \ 'subsubsection' : 't',
      \ 'l4subsection' : 'T',
      \ },
      \ }
  " \ 'kind2scope'	: {
  "   \ 'p' : 'parts',
  "   \ 'c' : 'chapter',
  " \ },
  " \ 'scope2kind'	: {
  "   \ 'parts'   : 'p',
  "   \ 'chapter' : 'c',
  "   \ 'section' : 's',
  "   \ 'subsection' : 'S',
  "   \ 'subsubsection' : 't',
  "   \ 'l4subsection' : 'T',
  " \ },
