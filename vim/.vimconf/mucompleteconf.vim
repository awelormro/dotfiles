let g:ycm_auto_trigger=1
let g:ycm_min_num_of_chars_for_completion=2
autocmd FileType vim let b:Verdin_setomnifunc = 1
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup=1
let g:Verdin#cooperativemode = 0

if snippets==1
  let g:UltiSnipsExpandTrigger = "<f5>"        " Do not use <tab>
  let g:UltiSnipsJumpForwardTrigger = "<Tab>"  " Do not use <c-j>
  let g:UltiSnipsJumpBackwardTrigger= "<S-Tab>"  " Do not use <c-j>
  " let g:Verdin#setomnifunc=1
  function! MyCompleteFileName() abort
    " match a (potential) wildcard preceding cursor position
    " NOTE: \f is a filename character, see :h 'isfname'
    let l:pattern = matchstr(strpart(getline('.'), 0, col('.') - 1), '\v(\f|\*|\?)*$')
    let l:file_comp_list = getcompletion(l:pattern, "file")
    if l:pattern == ''
      let l:file_comp_list += getcompletion(".", "file")
    endif
    " let l:file_comp_list += getcompletion(l:pattern, "file_in_path")
    call complete(col('.') - len(l:pattern), l:file_comp_list)

    " must return an empty string to show the menu
    return ''
  endfunction
  let g:UltiSnipsExpandTrigger = '<f5>'  " Use something different from <tab>
  let g:mucomplete#chains = {}
  let g:mucomplete#chains.default = ['ulti', 'path', 'omni', 'keyn', 'dict', 'uspl']
  inoremap <C-x><C-F> <C-R>=MyCompleteFileName()<CR>
  let g:mucomplete#chains = {}
  let g:mucomplete#chains.default = ['ulti', 'path', 'omni', 'keyn', 'dict', 'uspl']
  let g:UltiSnipsExpandTrigger = "<nop>"

  fun! MyCR()
    return pumvisible()
          \ ? "\<c-r>=UltiSnips#ExpandSnippetOrJump()\<cr>"
          \ : "\<cr>"
  endf

  inoremap <silent> <expr> <plug>MyCR MyCR()
  imap <cr> <plug>MyCR
endif
" set spellsuggest=fast,timeout:150

" let g:mucomplete#can_complete = {}
" let g:mucomplete#can_complete.tex =
"   \ { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
" " autocmd FileType vim let b:Verdin_setomnifunc = 1
