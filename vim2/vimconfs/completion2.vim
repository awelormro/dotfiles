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
function DelayedSetVariables(timer)
    inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
endfunction
let timer=timer_start(500,'DelayedSetVariables')

