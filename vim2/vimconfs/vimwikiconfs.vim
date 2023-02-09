
"VimWiki setup

" let g:vimwiki_list = [{'path': '~/Abuwiki/Abuwiki', 'path_html': '~/Abuwiki/Abuwiki_html/'},{'path':"~/Abuwiki/gcmwiki",'path_html':'~/Abuwiki/gcmwiki_html'},{'path': '~/Abuwiki/Abuwiki/miniwikis','path_html':'~/Abuwiki/htmls/miniwikis'} ]

let g:vimwiki_list = [
      \ {'name':'Princial', 'path':'~/Abuwiki/wikis/main','path_html':'~/Abuwiki/htmls/main'},
      \ {'name':'Tesis', 'path':'~/Abuwiki/wikis/tesis','path_html':'~/Abuwiki/htmls/tesis'},
      \ {'name':'Miniwikis', 'path':'~/Abuwiki/wikis/miniwikis','path_html':'~/Abuwiki/htmls/miniwikis'},
      \ {'name':'Trabajo', 'path':'~/Abuwiki/wikis/work','path_html':'~/Abuwiki/htmls/work'},
      \ {'name':'Clases', 'path':'~/Abuwiki/wikis/gcm','path_html':'~/Abuwiki/htmls/gcm'},
      \]

let g:vimwiki_global_ext = 0

let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 0,
    \   'table_format': 0,
    \   'table_mappings': 0,
    \   'lists': 0,
    \   'links': 0,
    \   'html': 1,
    \   'mouse': 1,
    \ }

let g:vimwiki_folding='expr'
autocmd filetype vimwiki set tw=55
" autocmd filetype vimwiki set fo+=a
" let g:vimwiki_list = [{'path': '~/Abuwiki/Abuwiki/', 'bullet_types' : ['•', '-', '→'], 'listsyms' : '✗○◐●✓'}]
" nmap <Leader>wf :VimwikiFollowLink<CR>
" nmap <Leader>wb :VimwikiGoBackLink<CR>
autocmd filetype vimwiki nmap <buffer> <Leader>wn :VimwikiNextLink<CR>
autocmd filetype vimwiki nmap <buffer> <Leader>wp :VimwikiPrevLink<CR>
autocmd filetype vimwiki nmap <buffer> <Leader>wtl :VimwikiToggleList<CR>
autocmd filetype vimwiki nmap <buffer> <C-t> :VimwikiToggleList<CR>
autocmd filetype vimwiki nmap <buffer> <C-Space> :VimwikiToggleListItem<CR>
autocmd filetype vimwiki nmap <buffer> <CR> :VimwikiFollowLink<CR>
autocmd filetype vimwiki nmap <buffer> <C-Backspace> :VimwikiGoBackLink<CR>
" nmap wn :VimwikiNextLink<CR>
" nmap wp :VimwikiPrevLink<CR>
" nmap wtl :VimwikiToggleList<CR>
