
syntax on
function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
  \ matchgroup='.a:textSnipHl.'
  \ keepend
  \ start="'.a:start.'" end="'.a:end.'"
  \ contains=@'.group
endfunction
function Codesnips()
  syntax on
  " filetype on
  call TextEnableCodeSnip(  'c',   '@begin=c@',   '@end=c@', 'SpecialComment')
  call TextEnableCodeSnip('cpp', '@begin=cpp@', '@end=cpp@', 'SpecialComment')
  call TextEnableCodeSnip('sql', '@begin=sql@', '@end=sql@', 'SpecialComment')
  call TextEnableCodeSnip('python', '@begin=python@', '@end=python@', 'SpecialComment')
  call TextEnableCodeSnip('lua', '@begin=lua@', '@end=lua@', 'SpecialComment')
  call TextEnableCodeSnip('tex', '@begin=tex@', '@end=tex@', 'SpecialComment')
  call TextEnableCodeSnip('web', '@begin=web@', '@end=web@', 'SpecialComment')
  call TextEnableCodeSnip('css', '@begin=css@', '@end=css@', 'SpecialComment')
  call TextEnableCodeSnip('htmlaux', '@begin=html@', '@end=html@', 'NonText')
  " bdelete
  " set hidden
  call TextEnableCodeSnip('jsaux', '@begin=js@', '@end=js@', 'SpecialComment')
  call TextEnableCodeSnip('java', '@begin=java@', '@end=java@', 'SpecialComment')
  call TextEnableCodeSnip('bash', '@begin=sh@', '@end=sh@', 'SpecialComment')
  call TextEnableCodeSnip('vimscriptaux', '@begin=vim@', '@end=vim@', 'SpecialComment')
  call TextEnableCodeSnip('rubyaux', '@begin=ruby@', '@end=ruby@', 'SpecialComment')
  call TextEnableCodeSnip('haskellaux', '@begin=haskell@', '@end=haskell@', 'SpecialComment')

  " syntax on
endfunction

" let b:current_syntax = ''
" unlet b:current_syntax
" syntax include @HTML syntax/html.vim
" autocmd filetype org call TextEnableCodeSnip('html' ,'#{{{html' ,'#html}}}', 'SpecialComment')
function! Callorgstandards()
  call Codesnips()
  sleep 2
  set filetype=org
endfunction

" autocmd filetype org call TextEnableCodeSnip('htmlaux','@begin=html@','@end=html@','SpecialComment')
autocmd filetype org call Callorgstandards()
" autocmd filetype org call Codesnips()
" autocmd filetype org sleep 2 | set filetype=org

autocmd filetype org nnoremap <Leader><Tab> :bn <CR>
autocmd filetype org nnoremap <Leader><S-Tab> :bp <CR>
" autocmd filetype org syntax match hsNiceOperator2 "**" conceal cchar=
" autocmd filetype org syntax match hsNiceOperator1 "*" conceal cchar=
" autocmd filetype org syntax match ocultar_asteriscos "*" conceal cchar=⚫
" autocmd filetype org syntax match ocultar_asteriscos "**" conceal cchar=⚪

" Archivo: ocultar_asteriscos.vim
syntax match ocultar_asteriscos "* " conceal cchar=⚫
" syntax match ocultar_asteriscos "**" conceal cchar=⚪
function! OrgFold()
  set foldmethod=syntax
  set foldlevel=1
  syn region orgHeading start='^\*' end='$'
  syn region orgList start='^[ \t]*-[ \t]' end='$'
  syn region orgComment start='^#' end='$'
  syn match orgLink '\[\[.*\]\[.*\]\]'
  set foldlevel=0
endfunction

function Snipendejo()
  syntax on
  syntax include @RUBY syntax/ruby.vim
  syntax region htmlSnip matchgroup=Snip start="@begin=html@" end="@end=html@" contains=@RUBY
  hi link Snip SpecialComment
endfunction



function! FindFileInList()
  let filelist = [    "~/.vimrc",    "~/Cosasrenata.md",    "~/Documentos/openbcfiles/codechallenges/html/web1/main.html",    "documento4.txt",    "documento5.txt"  ]
  let selected = fzf#run({ 'source': filelist, 'sink': 'e', 'window': {'width':0.9,'height':0.6} })
  if !empty(selected)
    execute 'e '.selected[0]
  endif
endfunction

nnoremap <leader>fl :call FindFileInList()<CR>
