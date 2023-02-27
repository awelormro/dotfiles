
function! FindFileInList2()
  let g:cheat_filelist = { 
        \ "css":"css.wiki",
        \ "emmet":"emmet.wiki",
        \ "git":"git.wiki", 
        \ "html":"html.wiki",  
        \ "latex":"tex.wiki", 
        \ "md":"md.wiki",
        \ "python":"py.wiki",
        \ "rmarkdown" : "rmarkdown.wiki",
        \ "taskwarrior":"taskwarrior.wiki", 
        \ "vim":"vim.wiki", 
        \ "vim-surround":"vim-surround.wiki",
        \ "vimtex":"vimtex.wiki", 
        \ "vimwiki":"vimwiki.wiki" 
        \ }

  let selected = fzf#run({
        \ 'source': values(g:cheat_filelist), 
        \ 'sink': 'rightbelow 25vs', 
        \ 'dir':'~/Abuwiki/wikis/miniwikis/cheats', 
        \ 'window': {'width':0.8,'height':0.4} 
        \ })
  if !empty(selected)
    execute 'e '.selected[0]
  endif
endfunction

" nnoremap <leader>l<leader>w :call FindFileInList2()<CR>

" Agregar extensión de archivo .cheat
au BufNewFile,BufRead *.cheat set filetype=markdown
au BufNewFile,BufRead *.cheat set foldlevel=0
set foldlevel=0

set splitright
set splitbelow



hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
