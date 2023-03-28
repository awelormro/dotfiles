
function Codesnips()
  call SyntaxRange#Include('#+BEGIN_SRC html', '#+END_SRC', 'html', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC css', '#+END_SRC', 'css', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC tex', '#+END_SRC', 'tex', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC javascript', '#+END_SRC', 'javascript', 'SpecialComment')
endfunction

" let b:current_syntax = ''
" unlet b:current_syntax
" syntax include @HTML syntax/html.vim
autocmd filetype org call Codesnips()


let g:tagbar_type_org = {
          \   'ctagstype':'org'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/dotfiles/vim1/.vimconfigs/orgmodetags.py'
          \ , 'ctagsargs': 'default'
          \ }

" let g:tagbar_type_org = {
"   \ 'ctagsbin'  : 'ctags',
"   \ 'ctagsargs' : '-R --languages=emacs-lisp,python',
"   \ 'kinds'     : [
"     \ 'h:Headings',
"     \ 'p:Plain lists',
"     \ 't:Tables',
"     \ 'e:Example blocks',
"     \ 's:Source code blocks'
"   \ ]
" \ }
 

function! Togglefoa()
  if &formatoptions== 'croql'
    setlocal textwidth=60
    setlocal formatoptions+=a
  elseif &formatoptions=='tq'
    setlocal textwidth=60
    setlocal formatoptions+=a
  else
    setlocal formatoptions-=a
  endif  
endfunction

autocmd filetype org let b:table_mode_corner= '+'
autocmd filetype org setlocal tabstop=3
autocmd filetype org setlocal shiftwidth=3
command! ToggleFormat call Togglefoa()
nnoremap <Leader>t<Leader>l :ToggleFormat<CR> 
