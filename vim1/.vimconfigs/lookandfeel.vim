

"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝
" cosas 
" Backup colorscheme if the original can't work
colorscheme slate
" colorscheme dusk
syntax on
autocmd filetype org syntax on
" Performance settings
set lazyredraw
" set synmaxcol=160
" set redrawtime=1000
syntax sync linebreaks=1
syntax sync lines=1
syntax sync minlines=10
set ttimeoutlen=10
set noscrollbind
syntax sync linecont 22
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

