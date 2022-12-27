
"       _____
"    __|___  |__  ____   _  ____  _____  _____  ______    __   ______
"   |   ___|    ||    \ | ||    ||     ||     ||   ___| _|  |_|   ___|
"    `-.`-.     ||     \| ||    ||    _||    _||   ___||_    _|`-.`-.
"   |______|  __||__/\____||____||___|  |___|  |______|  |__| |______|
"      |_____|
"
" Activate snippet with Enter, navigate with Tab and Shift-tab
" let g:UltiSnipsExpandTrigger="<leader><CR>"
" let g:UltiSnipsExpandTrigger="<CR><CR>"
let g:UltiSnipsExpandTrigger="<A-CR>"
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" let g:UltiSnipsListSnippets = "<A-Tab>"

" Snippets directory
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]

" inoremap <silent> <expr> <plug>MyCR
"     \ mucomplete#ultisnips#expand_snippet("\<cr>")
" imap <cr> <plug>MyCR
