let g:vimwiki_folding = 'syntax'
autocmd FileType wiki setlocal tw=70
runtime macros/justify.vim
autocmd BufEnter *.md if &filetype=='vimwiki' | setlocal tw=70 | endif

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:table_mode_align_char= ':' 
