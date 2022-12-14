"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝

" Backup colorscheme if the original can't work
colorscheme Tomorrow-Night

" Format options to avoid nasty paste
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

"  Auto cursorline delay in milliseconds
let g:auto_cursorline_wait_ms=50

" NERDTREE allow hidden files
let NERDTreeShowHidden=1

" Custom snippets path
let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"

" Vim lens avoid animation
let g:lens#animate = 0
