

set completeopt+=menuone,noselect,noinsert " don't insert text automatically
set pumheight=5 " keep the autocomplete suggestion menu small
set shortmess+=c " don't give ins-completion-menu messages

" if completion menu closed, and two non-spaces typed, call autocomplete
let s:insert_count = 0
function! OpenCompletion()
    if string(v:char) =~ ' '
        let s:insert_count = 0
    else                    
        let s:insert_count += 1
    endif
    if !pumvisible() && s:insert_count >= 2
        silent! call feedkeys("\<C-n>", "n")
    endif
endfunction

function! TurnOnAutoComplete()
    augroup autocomplete
        autocmd!
        autocmd InsertLeave let s:insert_count = 0
        autocmd InsertCharPre * silent! call OpenCompletion()
    augroup END
endfunction

function! TurnOffAutoComplete()
    augroup autocomplete
        autocmd!
    augroup END
endfunction

function! ReplayMacroWithoutAutoComplete()
    call TurnOffAutoComplete()
    let reg = getcharstr()
    execute "normal! @".reg
    call TurnOnAutoComplete()
endfunction

call TurnOnAutoComplete()

" don't let the above mess with replaying macros
nnoremap <silent> @ :call ReplayMacroWithoutAutoComplete()<CR>

" use tab for navigating the autocomplete menu
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" set complete+=kspell
" set completeopt=menuone,longest 

set completeopt+=menuone,noselect,noinsert
function! OpenCompletion()
    if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
        call feedkeys("\<C-x>\<C-o>", "n")
    endif
endfunction
let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd InsertCharPre * call OpenCompletion()



" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Function to delay cr keymap 
" function DelayedSetVariables(timer)
"     inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
" endfunction
" let timer=timer_start(500,'DelayedSetVariables')

 
  let g:AutoPairsMapCR = 0
  let g:AutoPairsMapSpace = 0
  imap <silent> <expr> <space> pumvisible()
    \ ? "<space>"
    \ : "<c-r>=AutoPairsSpace()<cr>"

  let g:UltiSnipsExpandTrigger = "<F5>"        " Do not use <tab>
  let g:UltiSnipsJumpForwardTrigger = "<Tab>"  " Do not use <c-j>

  inoremap <silent> <expr> <plug>UltiExpand
        \ mucomplete#ultisnips#expand_snippet("\<cr>")
  imap <plug>MyCR <plug>UltiExpand
  imap <cr> <plug>MyCR

" function DelayedSetVariables(timer)
  " inoremap <expr> <cr> pumvisible() ? "<c-y>" : "<cr>"
  " inoremap <expr> <cr> pumvisible() ? "<c-y>" : "<cr>" <C-p>
  " inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
  " inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>\<C-t>"
" endfunction
let timer=timer_start(500,'DelayedSetVariables')
" inoremap <expr> <cr> pumvisible() ? "\<c-y>\<Esc>a\<C-s>" : "<cr>"
  "  let g:UltiSnipsExpandTrigger="<CR>"
  " let g:UltiSnipsJumpForwardTrigger="<tab>"
  " let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
	" inoremap <silent> <expr> <plug>MyCR
	"     \ mucomplete#ultisnips#expand_snippet("\<cr>")
	" imap <cr> <plug>MyCR
    " \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'path','line'] }
    " \ [ 'ulti', 'omni', 'keyn', 'keyp','tags', 'spel','path','line'] }
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
" inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
    " inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
    " inoremap <silent> <expr> <plug>MyCR
    "     \ mucomplete#ultisnips#expand_snippet("\<cr>")
    " imap <cr> <plug>MyCR
" let g:UltiSnipsExpandTrigger="<CR>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" inoremap <silent> <expr> <plug>MyCR
"     \ mucomplete#ultisnips#expand_snippet("\<cr>")
" imap <cr> <plug>MyCR
