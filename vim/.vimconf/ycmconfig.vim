
let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'perl': ['->'],
  \   'ruby,rust': ['.', '::'],
  \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
  \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!(?=[a-zA-Z]{3,4})'],
  \   'html': ['<', '"', '</', ' '],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
" \   'php': ['->', '::'],
" \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
" Habilitar autocompletado de YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_delay = 500
  if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:ycm_semantic_triggers.python = ['re!(?=[a-zA-Z_]{3})']
let g:ycm_semantic_triggers.vim = ['re!(?=[a-zA-Z_]{3})']
let g:ycm_semantic_triggers.html = ['re!(?=[a-zA-Z_]{3})']
" Mapear la tecla Tab para seleccionar la primera opción de autocompletado
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
let g:ycm_cache_omnifunc=1
let g:ycm_auto_trigger=1
filetype plugin on 
filetype indent on
let g:Verdin#cooperativemode = 1
set completeopt+=menuone
set completeopt+=menu
let g:Verdin#autocompletedelay = 200
let g:Verdin#autocompletedelay=50
set omnifunc=syntaxcomplete#Complete
set completeopt+=popup
" set completeopt+=noselect
" let g:Verdin#setomnifunc = 1
set omnifunc=syntaxcomplete#Complete
" inoremap <silent> <C-R>=<SNR>191_RequestSemanticCompletion()<CR>
" autocmd InsertCharPre call AutoComplete1()
fun! AutoComplete1()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 2] !~ '\K'
        \ && getline('.')[col('.') - 1] !~ '\K'
        call feedkeys("\<C-R>=<SNR>191_RequestSemanticCompletion()<CR>", 'n')
    end
endfun
let g:ycm_use_ultisnips_completer = 1
let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
