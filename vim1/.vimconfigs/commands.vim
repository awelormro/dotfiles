" vim: set fdm=marker:
"

let g:bulletjournalicons=['\.', 'x', 'o','\*', '\!', '\-\-', '»', '«', '+']
" Orgmode commands experimentation {{{1
" Codesnips to add highlight Orgmode Code {{{2
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

" Ctags integration {{{2

let g:tagbar_type_org = {
      \   'ctagstype':'org'
      \ , 'kinds':['h:header']
      \ , 'sro':'&&&'
      \ , 'kind2scope':{'h':'header'}
      \ , 'sort':0
      \ , 'ctagsbin':'~/dotfiles/vim1/.vimconfigs/orgmodetags.py'
      \ , 'ctagsargs': 'default'
      \ }


" Orgmode attempt to toggle some formats {{{2

fun! Modifycheck()
  let currli=getline('.')
  echo currli
  substitute /- TODO \[ \]/- DONE \[x\]
endfun

fun! Updatenewchecks()
  let currli=getline('.')
  let listels=split(currli,' ')
  echo listels
  for element in listels
    if match(element, '\[.') != -1
      echo 'Elemento existente en ' . element
      let separatortasks = element
    endif
  endfor
  echo separatortasks
  let firtstchar=strpart(separatortasks,1,len(separatortasks)-2)
  let newstr= firtstchar 
  echo newstr
  let listsplitted=split(newstr,'/')
  echo listsplitted
  if listsplitted[0]==listsplitted[1]
    echo 'task acabado'
  endif
  substitute / \[ \] TODO/ \[X\] DONE
  substitute / \[X\] TODO/ \[X\] DONE
endf


" Orgmode table settings {{{2

autocmd filetype org let b:table_mode_corner= '+'
autocmd filetype org setlocal tabstop=3
autocmd filetype org setlocal shiftwidth=3



" Vim fastfold settings {{{1
" main Fastfold enablings {{{2
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:rst_fold_enabled = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:zsh_fold_enable = 1
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
let g:fortran_fold=1
let g:clojure_fold = 1
let g:baan_fold=1

" Python, C, C++ indent and fold methods {{{2
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType org setlocal foldmethod=expr
autocmd FileType python,vim setlocal foldmethod=indent
autocmd FileType python setlocal  autoindent expandtab tabstop=4 shiftwidth=4
autocmd FileType json setlocal foldmethod=syntax

" Markdown fold method using python style
let g:vim_markdown_folding_style_pythonic = 1

" Pomodoro timer attempt {{{1

function! PomodoroTimer()
    let remaining = 25 * 60
    while remaining > 0
        echom "Pomodoro timer: " . remaining / 60 . " minutes remaining."
        let remaining -= 1
        call timer_start(1000, function('PomodoroTick'), #{remaining: remaining})
        sleep 1m
    endwhile
    echom "Pomodoro timer finished."
endfunction

function! PomodoroTick(timer_id, timer_data)
    let remaining = get(timer_data, 'remaining', 0)
    if remaining > 0
        call set(timer_data, 'remaining', remaining - 1)
    endif
endfunction

command! PomodoroTimer :call PomodoroTimer()

" FZF nerdfont picker {{{1
"

function! Fzf_glyphs()
  let s:glyphs = {
        \ 'A': '🅰️',
        \ 'B': '🅱️',
        \ 'C': '🌊',
        \ 'D': '🌵',
        \ 'E': '📧',
        \ 'F': '🎏',
        \ 'G': '🌀',
        \ 'H': '🏠',
        \ 'I': '🎐',
        \ 'J': '🎷',
        \ 'K': '🎋',
        \ 'L': '👢',
        \ 'M': 'Ⓜ️',
        \ 'N': '🎵',
        \ 'O': '🅾️',
        \ 'P': '🅿️',
        \ 'Q': '🍳',
        \ 'R': '®️',
        \ 'S': '💲',
        \ 'T': '✝️',
        \ 'U': '⛎',
        \ 'V': '✔️',
        \ 'W': '〰️',
        \ 'X': '❎',
        \ 'Y': '💹',
        \ 'Z': '💤',
        \ }
  let s:glyph = ''
  call fzf#run(fzf#wrap({
        \ 'source': keys(s:glyphs),
        \ 'sink': function('InsertGlyph1'),
        \ 'down': '40%',
        \ 'header': 'Glyphs',
        \ 'expect': ['ctrl-t', 'enter'],
        \ 'options': '--ansi -n 2.. --prompt "Select a glyph> "'
        \ }))
endfunction

function! InsertGlyph1(selected)
  let s:glyph = s:glyphs[a:selected[0]]
  execute "normal i" . s:glyph
endfunction


" Toggle indentation and syntax for file {{{1

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


command! ToggleFormat call Togglefoa()
nnoremap <Leader>t<Leader>l :ToggleFormat<CR> 

