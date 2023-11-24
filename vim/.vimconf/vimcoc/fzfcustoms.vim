" vim: set fdm=marker:
"   ******** ******** ********
"  /**///// //////** /**/////
"  /**           **  /**
"  /*******     **   /*******
"  /**////     **    /**////
"  /**        **     /**
"  /**       ********/**
"  //       //////// //
" Settings for fzf plugins {{{1
let g:fzf_session_path="~/Plantillas/session"
" Fzf For Bibtex {{{1
function! Bibtex_ls()
  let bibfiles = (
      \ globpath('.', '*.bib', v:true, v:true) +
      \ globpath('..', '*.bib', v:true, v:true) +
      \ globpath('*/', '*.bib', v:true, v:true) +
      \ globpath(expand('%:h'), '*.bib',v:true,v:true)
      \ )
  let bibfiles = join(bibfiles, ' ')
  let source_cmd = 'bibtex-ls '.bibfiles
  return source_cmd
endfunction

function! s:bibtex_cite_sink_insert(lines)
    let r=system("bibtex-cite ", a:lines)
    execute ':normal! a' . r
    call feedkeys('a', 'n')
endfunction

inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_cite_sink_insert'),
                        \ 'window': { 'width': 0.9, 'height': 0.6 },
                        \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>

                        " \ 'up': '40%',
" inoremap <silent> @,, @@

" Important files fzf searcher {{{1
let g:importantfiles = {
      \ 'Alacritty terminal': '~/.config/alacritty/alacritty.yml',
      \ 'Xresources file': '~/.Xresources',
      \ 'i3 config': '~/.config/i3/config',
      \ 'Picom config': '~/.config/picom.conf',
      \ 'Tmux configs': '~/.tmux.conf',
      \ 'Vimrc file': '~/.vimrc'
      \ }

fun! Importanttranslater(args)
  execute 'let nombrecompleto= g:importantfiles["' . a:args . '"]'
  execute 'e ' . nombrecompleto
endf

command! -bang -nargs=1 Auxcommand1 call Importanttranslater(<q-args>)  
command! ImportantFiles call ImportantFilesFZF()

function! ImportantFilesFZF()
    let dict = g:importantfiles
    let list = keys(dict)
    let choice = fzf#run({
          \ 'source': list,
          \ 'window': { 'width': 0.9, 'height': 0.6 },
          \ 'sink': 'Auxcommand1'
          \})
endfunction

" Cheatsheets vim for cheatsheet quick reference {{{1
let g:cheats_filelist = { 
      \ "css":"css.org",
      \ "emmet":"emmet.org",
      \ "git":"git.org", 
      \ "html":"html.org",  
      \ "latex":"tex.org", 
      \ "md":"md.org",
      \ "python":"py.org",
      \ "rmarkdown" : "rmarkdown.org",
      \ "taskwarrior":"taskwarrior.org", 
      \ "vim":"vim.org", 
      \ "vim-surround":"vim-surround.org",
      \ "vimtex":"vimtex.org", 
      \ "vimwiki":"vimwiki.org", 
      \ "orgmode":"orgmode.org"
      \ }

command! -bang -nargs=1 CdGFiles call Pasarafzf(<q-args>)  
command! FindCheatsheets call FindFileInList2()

fun! Pasarafzf(args)
  execute 'let nombrecompleto= g:cheats_filelist["' . a:args . '"]'
  execute 'e ' . g:zettelvim_dir . '/' . nombrecompleto
endf

function! FindFileInList2()
  let cheats=g:cheats_filelist
  let list=keys(cheats)
  let selected = fzf#run({
        \ 'source': list,
        \ 'window': { 'width': 0.9, 'height': 0.6 },
        \ 'sink': 'CdGFiles'
        \ })
endfunction


