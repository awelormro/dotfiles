
"VimWiki setup

" let g:vimwiki_list = [{'path': '~/Abuwiki/Abuwiki', 'path_html': '~/Abuwiki/Abuwiki_html/'},{'path':"~/Abuwiki/gcmwiki",'path_html':'~/Abuwiki/gcmwiki_html'},{'path': '~/Abuwiki/Abuwiki/miniwikis','path_html':'~/Abuwiki/htmls/miniwikis'} ]

let g:vimwiki_list = [
      \ {'name':'Princial', 'path':'~/Abuwiki/wikis/main','path_html':'~/Abuwiki/htmls/main'},
      \ {'name':'Tesis', 'path':'~/Abuwiki/wikis/tesis','path_html':'~/Abuwiki/htmls/tesis'},
      \ {'name':'Miniwikis', 'path':'~/Abuwiki/wikis/miniwikis','path_html':'~/Abuwiki/htmls/miniwikis', 'nested_syntaxes':{'python': 'python', 'c++': 'cpp','js':'javascript','html':'html','tex':'tex'}},
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

function Opencloselinks()
  let g:prev_name=execute(":echo bufnr()")
  execute 'VimwikiVSplitLink move_cursor|'
  execute 'wincmd h'
  execute 'bd '.g:prev_name
endfunction

function Prevlinkonly()
  execute 'bd'
  execute 'edit '.g:prev_name
endfunction

let g:vimwiki_folding='expr'
autocmd filetype vimwiki setlocal tw=55
autocmd filetype vimwiki nmap <buffer> <Leader>wn :VimwikiNextLink<CR>
autocmd filetype vimwiki nmap <buffer> <Leader>wp :VimwikiPrevLink<CR>
autocmd filetype vimwiki nmap <buffer> <Leader>wtl :VimwikiToggleList<CR>
autocmd filetype vimwiki nmap <buffer> <C-t> :VimwikiToggleList<CR>
autocmd filetype vimwiki nmap <buffer> <C-Space> :VimwikiToggleListItem<CR>
autocmd filetype vimwiki nmap <buffer> <CR> :call Opencloselinks()<CR>
autocmd filetype vimwiki nmap <buffer> <Leader><Backspace> :VimwikiBacklinks<CR>
" nmap wn :VimwikiNextLink<CR>
" nmap wp :VimwikiPrevLink<CR>
" nmap wtl :VimwikiToggleList<CR>
