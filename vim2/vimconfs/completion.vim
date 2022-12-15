
 " /$$   /$$
" | $$  /$$/
" | $$ /$$/   /$$$$$$  /$$   /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$   /$$$$$$$
" | $$$$$/   /$$__  $$| $$  | $$| $$_  $$_  $$ |____  $$ /$$__  $$ /$$_____/
" | $$  $$  | $$$$$$$$| $$  | $$| $$ \ $$ \ $$  /$$$$$$$| $$  \ $$|  $$$$$$
" | $$\  $$ | $$_____/| $$  | $$| $$ | $$ | $$ /$$__  $$| $$  | $$ \____  $$
" | $$ \  $$|  $$$$$$$|  $$$$$$$| $$ | $$ | $$|  $$$$$$$| $$$$$$$/ /$$$$$$$/
" |__/  \__/ \_______/ \____  $$|__/ |__/ |__/ \_______/| $$____/ |_______/
"                      /$$  | $$                        | $$
"                     |  $$$$$$/                        | $$
"                      \______/                         |__/

set completeopt+=noselect
set completeopt+=menuone
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

" Define default completion chain
let g:mucomplete#chains = { 'default':
    \ [ 'ulti', 'omni','keyn','keyp','tags','spel','path','line'] }
 snoremap <silent> <tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>
let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1

    " \ [ 'ulti','omni','spell','keyn','keyp','tags','path','line'] }
