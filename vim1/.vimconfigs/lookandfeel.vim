

"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝
" cosas 
" Backup colorscheme if the original can't work
colorscheme catppuccin_macchiato
" colorscheme dusk
syntax on
autocmd filetype org syntax on
" Performance settings
set lazyredraw
" set synmaxcol=160
" set redrawtime=1000
syntax sync linebreaks=2
syntax sync minlines=10
set ttimeoutlen=10
set noscrollbind
let g:vimsyn_maxlines=40
syntax sync lines=40
" syntax sync maxlines=800
" syntax sync fromstart
" Format options to avoid nasty paste
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

" Set global colors to put in CursorLine
" autocmd BufEnter * highlight CursorLine guibg=#222222 guifg=fg
" autocmd BufEnter * highlight CursorLine guibg=#222222 guifg=fg

" autocmd BufEnter * highlight CursorLine guibg=#222222 
" autocmd BufEnter * highlight CursorLine guibg=#222222 
" Configuración del color de los menús para que siempre sean blanco y negro
"
" autocmd BufEnter * hi Pmenu ctermfg=white ctermbg=black guifg=white guibg=#222222
" autocmd BufEnter * hi PmenuSel ctermfg=black ctermbg=black guifg=#222222 guibg=white


" Vim tablemode disable syntax to increase Performance
let g:table_mode_syntax = 0
"  Auto cursorline delay in milliseconds
let g:auto_cursorline_wait_ms=25


" Vim lens avoid animation
let g:lens#animate = 0

let g:minimap_close_filetypes=['nofile','nowrite','quickfix','terminal','prompt']
let g:minimap_close_filetypes = ['startify','fern','vim-plug','nerdtree']
let g:minimap_width=7
set conceallevel=2

hi NonText guifg=bg

autocmd BufEnter FileType org syntax clear org_table
let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'Tagbar', 'fern','calendar']

" hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''



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

" Python, C, C++ indent and fold methods
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent
autocmd FileType org setlocal foldmethod=expr
autocmd FileType python setlocal  autoindent expandtab tabstop=4 shiftwidth=4
" autocmd FileType org setlocal  autoindent expandtab tabstop=3 shiftwidth=3

" Markdown fold method using python style
let g:vim_markdown_folding_style_pythonic = 1
















