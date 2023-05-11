

"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝
" cosas 
" Backup colorscheme if the original can't work
" colorscheme dracula_bold
colorscheme erez

syntax on
autocmd filetype org syntax on

" Performance settings
set lazyredraw
set synmaxcol=160
" set redrawtime=1000
syntax sync minlines=10
" Format options to avoid nasty paste
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o


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

autocmd FileType org syntax clear org_table
let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'Tagbar', 'fern','calendar']

" hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''
