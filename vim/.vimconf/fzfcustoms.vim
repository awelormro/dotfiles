" vim: set fdm=marker:
"   ******** ******** ********
"  /**///// //////** /**/////
"  /**           **  /**
"  /*******     **   /*******
"  /**////     **    /**////
"  /**        **     /**
"  /**       ********/**
"  //       //////// //
" FZF Custom Functions {{{1
" Fzf For Bibtex {{{2
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
                        \ 'up': '40%',
                        \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>


