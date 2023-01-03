set completeopt-=preview
set completeopt+=menuone,noselect,noinsert

" Define default completion chain
let g:mucomplete#chains = { 'default':
            \ [ 'ulti','omni','tags','keyn','keyp','path','line'] }
" set conceallevel
let g:UltiSnipsExpandTrigger="<C-right>"
let g:UltiSnipsJumpForwardTrigger="<C-right>"
let g:UltiSnipsJumpBackwardTrigger="<C-left>"
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]

let g:SuperTabDefaultCompletionType = "<c-n>"

" Pair ultisnips and mucomplete
fun! TryUltiSnips()
    let g:ulti_expand_or_jump_res = 0
    if !pumvisible() " With the pop-up menu open, let Tab move down
        call UltiSnips#ExpandSnippetOrJump()
    endif
    return ''
endf
  
fun! TryMUcomplete()
    return g:ulti_expand_or_jump_res ? "" : "\<plug>(MUcompleteFwd)"
endf

let g:mucomplete#no_mappings  = 1 " Don't do any mappings I will do it myself

" Extend completion
" imap <expr> <S-tab> mucomplete#extend_fwd("\<right>")

" Cycle through completion chains
imap <unique> <C-'> <plug>(MUcompleteCycFwd)
imap <unique> <c-;> <plug>(MUcompleteCycBwd)
" imap <unique> <S-Tab> <plug>(MUcompleteCycFwd)
" Try to expand snippet, if fails try completion.
inoremap <plug>(TryUlti) <c-r>=TryUltiSnips()<cr>
imap <expr> <silent> <plug>(TryMU) TryMUcomplete()
imap <expr> <silent> <tab> "\<plug>(TryUlti)\<plug>(TryMU)"
" imap <expr> <silent> <tab> "\<plug>(TryMU)"
imap <expr> <silent> <cr> "\<plug>(TryUlti)\<plug>(TryMU)"
" Map tab in select mode as well, otherwise you won't be able to jump if a snippet place
" holder has default value.
snoremap <silent> <tab> <Esc>:call UltiSnips#ExpandSnippetOrJump()<cr>
" Autoexpand if completed keyword is a snippet
inoremap <silent> <expr> <plug>MyCR mucomplete#ultisnips#expand_snippet("\<cr>")
imap <cr> <plug>MyCR

let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1  
