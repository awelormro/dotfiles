"VimWiki setup

let g:vimwiki_list = [{'path': '~/Abuwiki/', 'path_html': '~/Abuwiki_html/'},{'path':"~/gcmwiki",'path_html':'~/gcmwiki_html'}]
let g:vimwiki_global_ext = 0

  let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 1,
    \   'lists': 0,
    \   'links': 0,
    \   'html': 1,
    \   'mouse': 1,
    \ }


let g:vimwiki_list = [{'path': '~/Abuwiki/', 'bullet_types' : ['•', '-', '→'], 'listsyms' : '✗○◐●✓'}]
nmap <Leader><Tab> :VimwikiFollowLink<CR>
nmap <Leader><S-Tab> :VimwikiGoBackLink<CR>
nmap <Leader><CR> :VimwikiNextLink<CR>
nmap <Leader><Backspace> :VimwikiPrevLink<CR>
nmap <Leader><Space> :VimwikiToggleList<CR>
nmap <C-t> :VimwikiToggleListItem<CR>

