
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



" Vim fastfold settings

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
" let g:fastfold_skip_filetypes=['org']

" Python, C, C++ indent and fold methods
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType org setlocal foldmethod=expr
autocmd FileType python,vim setlocal foldmethod=indent
autocmd FileType python setlocal  autoindent expandtab tabstop=4 shiftwidth=4

" Markdown fold method using python style
let g:vim_markdown_folding_style_pythonic = 1

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
