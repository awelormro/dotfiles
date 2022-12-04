
"VimWiki setup

let g:vimwiki_list = [{'path': '~/Abuwiki/', 'path_html': '~/Abuwiki_html/'},{'path':"~/gcmwiki",'path_html':'~/gcmwiki_html'}]
let g:vimwiki_global_ext = 0


" autocmd FileType markdown,rmarkdown,vimwiki 
" " activates only on markdown, rmarkdown, and vimiwki filetypes
"       \ inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>| 
"       " enables insert mode vimwiki return mapping
"       \ autocmd CompleteChanged * silent! iunmap <CR>|
"       " disables insert mode mapping on complete changed
"       \ autocmd CompleteDone * inoremap <CR> <ESC>:VimwikiReturn 3 5<CR>
" re-enables the insert mode mapping">"

" disable table mappings
let g:vimwiki_key_mappings ={   
      \ 'all_maps': 1,
      \ 'global': 1,
      \ 'headers': 1,
      \ 'text_objs': 1,
      \ 'table_format': 1,
      \ 'table_mappings': 0,
      \ 'lists':1,
      \ 'links':1,
      \ 'html': 1,
      \ 'mouse':0
      \ }

augroup VimWikiRemaps
  au!
  au FileType vimwiki silent! iunmap <buffer><Tab> 
  au FileType vimwiki inoremap <silent><expr><buffer> <M-n> vimwiki#tbl#kbd_tab()
    au FileType vimwiki inoremap <silent><expr><buffer> <M-p> vimwiki#tbl#kbd_shift_tab()
  autocmd Filetype vimwiki inoremap <silent><expr><buffer> <cr> pumvisible() ? coc#_select_confirm()
        \: "<C-]><Esc>:VimwikiReturn 1 5<CR>"
    " au WinLeave * setlocal nocursorline
augroup END
