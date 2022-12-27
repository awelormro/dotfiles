
"  /$$      /$$
" | $$$    /$$$
" | $$$$  /$$$$ /$$   /$$  /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$
" | $$ $$/$$ $$| $$  | $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$
" | $$  $$$| $$| $$  | $$| $$      | $$  \ $$| $$ \ $$ \ $$| $$  \ $$
" | $$\  $ | $$| $$  | $$| $$      | $$  | $$| $$ | $$ | $$| $$  | $$
" | $$ \/  | $$|  $$$$$$/|  $$$$$$$|  $$$$$$/| $$ | $$ | $$| $$$$$$$/
" |__/     |__/ \______/  \_______/ \______/ |__/ |__/ |__/| $$____/
"                                                          | $$
"                                                          | $$
"                                                           |__/
"
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u"
"


set updatetime=100
" set completeopt+=noselect
set completeopt+=noinsert,menuone,preview
" set completeopt-=preview
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" let g:mucomplete#completion_delay = 1

" Define default completion chain
let g:mucomplete#chains = { 'default':
    \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'spel','path','line'] }
    " \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'path','line'] }
" snoremap <silent> <tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>
let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1

function DelayedSetVariables(timer)
    inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
    " inoremap <silent> <expr> <plug>MyCR
    "     \ mucomplete#ultisnips#expand_snippet("\<cr>")
    " imap <cr> <plug>MyCR
endfunction
let timer=timer_start(500,'DelayedSetVariables')
    " \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'spel','path','line'] }
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
" inoremap <expr> <cr> pumvisible() ? "<c-y>" : "<cr>"
" inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
