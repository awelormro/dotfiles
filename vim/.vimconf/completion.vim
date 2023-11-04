" vim: set fdm=marker:
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
" Mucomplete settings {{{1
" Global settings {{{2
" Anteponer la manera en que se escribe correctamente pero se puede utilizar
" todo lo anterior 
set updatetime=100
set completeopt-=preview
set completeopt+=noselect
set completeopt+=noinsert,menuone

" set completeopt-=preview
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

let g:mucomplete#auto_complete_timeout = 200
let g:jedi#completions_timeout = 100
let g:jedi#popup_on_dot = 1  " It may be 1 as well

let g:mucomplete#completion_delay = 300


let g:mucomplete#timeout = 200

" Function to enable CR as key to input {{{2
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
" Define default completion chain {{{2
let g:mucomplete#chains = { 
      \'default':
      \ ['ulti','uspl','omni','keyp','keyn','path','dict','line']
      \ }
let g:mucomplete#can_complete = {}
let g:mucomplete#omni_timeout = 500
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1  
let g:Verdin#cooperativemode = 1

"  }}}
"  }}}
"       _____
"    __|___  |__  ____   _  ____  _____  _____  ______    __   ______
"   |   ___|    ||    \ | ||    ||     ||     ||   ___| _|  |_|   ___|
"    `-.`-.     ||     \| ||    ||    _||    _||   ___||_    _|`-.`-.
"   |______|  __||__/\____||____||___|  |___|  |______|  |__| |______|
"      |_____|
"
"  Ultisnips options {{{1
" Activate snippet with Enter, navigate with Tab and Shift-tab
let g:UltiSnipsExpandTrigger="<A-CR>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsListSnippets = "<A-Tab>"

" Snippets directory
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]


" Custom snippets path
let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"


