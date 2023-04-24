

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

syntax on
autocmd filetype org syntax on

" Format options to avoid nasty paste
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

"  Auto cursorline delay in milliseconds
let g:auto_cursorline_wait_ms=50


" Vim lens avoid animation
let g:lens#animate = 0
  
let g:minimap_close_filetypes=['nofile','nowrite','quickfix','terminal','prompt']
let g:minimap_close_filetypes = ['startify','fern','vim-plug','nerdtree']
let g:minimap_width=7
set conceallevel=2

hi NonText guifg=bg

let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'Tagbar', 'fern','calendar']

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''
