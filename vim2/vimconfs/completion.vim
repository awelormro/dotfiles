
"    /$$      /$$
"   | $$$    /$$$
"   | $$$$  /$$$$ /$$   /$$  /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$
"   | $$ $$/$$ $$| $$  | $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$
"   | $$  $$$| $$| $$  | $$| $$      | $$  \ $$| $$ \ $$ \ $$| $$  \ $$
"   | $$\  $ | $$| $$  | $$| $$      | $$  | $$| $$ | $$ | $$| $$  | $$
"   | $$ \/  | $$|  $$$$$$/|  $$$$$$$|  $$$$$$/| $$ | $$ | $$| $$$$$$$/
"   |__/     |__/ \______/  \_______/ \______/ |__/ |__/ |__/| $$____/
"                                                            | $$
"                                                            | $$
"                                                            |__/
"
" 


set updatetime=200
set completeopt+=noselect
set completeopt+=noinsert,menuone,preview
" set completeopt-=preview
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

let g:mucomplete#auto_complete_timeout = 300
let g:jedi#completions_timeout = 500
let g:jedi#popup_on_dot = 1  " It may be 1 as well
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:mucomplete#completion_delay = 1
" inoremap <expr> <cr> pumvisible() ? "\<A-CR>\<c-y>" : "<cr>"

  
" When pum is visible & entry selected which is a snippet, expand snippet.
" When pum is visible & entry selected which is not a snippet, only close pum.
" When pum is visible & no entry selected, close pum and insert newline.
" When pum is not visible, insert newline.
function! s:ExpandSnippetOrClosePumOrReturnNewline()
    if pumvisible()
        if !empty(v:completed_item)
            let snippet = UltiSnips#ExpandSnippet()
            if g:ulti_expand_res > 0
                return snippet
            else
                return "\<C-y>"
            endif
        else
            return "\<C-y>"
        endif
    else
        return "\<CR>"
    endif
endfunction


inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrClosePumOrReturnNewline()<CR>
" Define default completion chain
let g:mucomplete#chains = { 'default':
    \ [ 'ulti', 'omni', 'keyn', 'keyp', 'path','line'] }
" inoremap <silent> <cr> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>
let g:mucomplete#can_complete = {}
let g:mucomplete#omni_timeout = 1000
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1  
let g:Verdin#cooperativemode = 0
    " \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'path','line'] }
