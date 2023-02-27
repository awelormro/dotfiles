"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝
" cosas 
" Backup colorscheme if the original can't work
colorscheme Tomorrow-Night

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

let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'Tagbar', 'fern']




hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
