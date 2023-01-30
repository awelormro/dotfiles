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
let g:fastfold_skip_filetypes=['org']
" au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()
" Python, C, C++ indent and fold methods
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent
" autocmd FileType org setlocal foldmethod=indent
autocmd FileType python setlocal  autoindent expandtab tabstop=4 shiftwidth=4
autocmd FileType org setlocal  autoindent expandtab tabstop=3 shiftwidth=3
filetype plugin indent on
"
" Table of contents
let g:org_toc = 1

" Code folding
" let g:org_src_block_folds = 1
" let g:org_src_block_folding = 'indent'
" Markdown fold method using python style
let g:vim_markdown_folding_style_pythonic = 1

