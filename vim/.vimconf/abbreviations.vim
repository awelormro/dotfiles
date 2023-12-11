"
" vim: set fdm=marker:

"       .:       .::      .::
"      .: ::     .::      .::
"     .:  .::    .::      .::      .: .:::   .::    .::     .:: .::::
"    .::   .::   .:: .::  .:: .::   .::    .:   .::  .::   .:: .::
"   .:::::: .::  .::   .::.::   .:: .::   .::::: .::  .:: .::    .:::
"  .::       .:: .::   .::.::   .:: .::   .:           .:.::       .::
" .::         .::.:: .::  .:: .::  .:::     .::::       .::    .:: .::
"
"  Use of abbreviations {{{1
" 󰌌  Shift+Space to trigger abbreviations{{{2 
inoremap <S-Space> ,,<C-]>

inoremap <C-f> <C-e><C-X><C-F>
" 󰖫 
" imap <A-Space> <C-x><C-k>
" To add a custom read file from different parts of the line, just add
" r! sed -n 147,227p /path/to/foo/foo.c
" To add several
"   Vimscript abbreviations {{{2
autocmd Filetype vim iabbrev <buffer> f,, function (<Right><C-o>o<C-o>oendfunction<Up><Up><Left><Left>
autocmd FileType vim iabbrev <buffer> wh,, while <CR><CR>endwhile<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> if,, if <CR><CR>endif<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> for,, for <CR><CR>endfor<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> let,, let  = <C-o>2h
iabbrev nerd,, <C-o>:NerdFontsFzF<CR>
autocmd FileType vim iabbrev <buffer> sec,, " {{{<CR><Up><Down><Backspace><Up><Right><Space>
" }}}
"  LaTeX abbreviations {{{2
autocmd Filetype tex iabbrev <buffer> doc,, \begin{document}<CR><CR>\end{document}
autocmd Filetype tex iabbrev <buffer> fra,, \frac{<Right>{<Left><Left>
autocmd Filetype tex iabbrev <buffer> frc,, \frac{}{}<Esc>F\2F bvexf{pF\F bvex2f{pi
autocmd Filetype tex iabbrev <buffer> eq,, $ $<C-o>2<Left>
autocmd Filetype tex iabbrev <buffer> bo,, \textbf{}<Left>
autocmd FileType tex iabbrev <buffer> biblatex,, \usepackage[backend=biber,style=apa]{biblatex}
      \<C-o>o\addbibresource{biblio.bib}
autocmd FileType tex iabbrev <buffer> up,, \usepackage{}<Left>
autocmd Filetype tex iabbrev <buffer> ita,, \textit{}<Left>
autocmd Filetype tex iabbrev <buffer> ci,, \cite{}<Left>
autocmd Filetype tex iabbrev <buffer> tc,, \textcite{}<Left>
autocmd Filetype tex iabbrev <buffer> it,, <C-o>o\item
autocmd Filetype tex iabbrev <buffer> beg,, \begin{class<Right><C-o>o<CR>\end{clas<Up><Esc>cse
" Set a starting command to article version {{{3
autocmd Filetype tex iabbrev <buffer> start,, \documentclass{article} 
      \<CR>\usepackage[spanish,es-tabla]{babel}
      \<CR>\decimalpoint
      \<CR>\usepackage{graphicx}
      \<CR>\usepackage{amsmath}
      \<CR>\usepackage{multicol}
      \<CR>\usepackage{multirow}
      \<CR>\begin{document}
      \<CR><CR>\end{document}<up>  
" }}}
" Set a beamer startpoint {{{3
autocmd FileType tex iabbrev <buffer> beamer,, \documentclass[17pt]{beamer}
      \<CR>\usepackage{tikz}
      \<CR>\usetheme{Madrid}
      \<CR>\usecolortheme{beaver}
      \<CR>\title[About Beamer] %optional
      \<CR>{Madrid theme + beaver}
      \<CR>\subtitle{Demonstrating larger fonts}
      \<CR>\author[Arthur, Doe] % (optional)
      \<CR>{A.~B.~Arthur\inst{1} \and J.~Doe\inst{2}}
      \<CR>
      \<CR>\date[VLC 2021] % (optional)
      \<CR>{Very Large Conference, April 2021}
      \<CR>\begin{document}
      \<CR>\frame{\titlepage}
      \<CR>%Highlighting text
      \<CR>\begin{frame}
      \<CR>\frametitle{}
      \<CR>\end{frame}
      \<CR>\end{document}
" }}}
autocmd Filetype tex iabbrev <buffer> usep,, \usepackage{}<Esc>4bvexf}hpi
autocmd Filetype tex iabbrev <buffer> begi,, <Esc>bvexi\begin{}<C-o>F{<C-o>p<Right><CR><CR>\end{}<C-o>F{<C-o>p<Up>
autocmd FileType tex iabbrev <buffer> sec,, % {{{<CR><Up><Down><Backspace><Up><Right><Space>
" }}}
"  html abbreviations {{{2
autocmd Filetype html iabbrev <buffer> h1,, <h1></h1><C-o>F<
autocmd Filetype html iabbrev <buffer> h2,, <h2></h2><C-o>F<
autocmd Filetype html iabbrev <buffer> h3,, <h3></h3><C-o>F<
autocmd Filetype html iabbrev <buffer> h4,, <h4></h4><C-o>F<
autocmd Filetype html iabbrev <buffer> h5,, <h5></h5><C-o>F<
autocmd Filetype html iabbrev <buffer> h6,, <h6></h6><C-o>F<
autocmd Filetype html iabbrev <buffer> strong,, <strong></strong><C-o>F<
autocmd Filetype html iabbrev <buffer> head,, <head></head><C-o>F<
autocmd FileType html iabbrev <buffer> img,, <img src="" alt="alias" width="500" height="600"><Esc>F<3w<Right><Right>i
autocmd Filetype html iabbrev <buffer> !DOCTYPE, <!DOCTYPE>  </!DOCTYPE><C-o>F<
autocmd Filetype html iabbrev <buffer> html,, <html></html><C-o>F<
autocmd Filetype html iabbrev <buffer> head,, <head></head><C-o>F<
autocmd Filetype html iabbrev <buffer> title,, <title></title><C-o>F<
autocmd Filetype html iabbrev <buffer> body,, <body></body><C-o>F<
autocmd Filetype html iabbrev <buffer> p,, <p></p><C-o>F<
autocmd Filetype html iabbrev <buffer> a,, <a></a><C-o>F<
autocmd Filetype html iabbrev <buffer> img,, <img></img><C-o>F<
autocmd Filetype html iabbrev <buffer> ul,, <ul></ul><C-o>F<
autocmd Filetype html iabbrev <buffer> ol,, <ol></ol><C-o>F<
autocmd Filetype html iabbrev <buffer> li,, <li></li><C-o>F<
autocmd Filetype html iabbrev <buffer> div,, <div></div><C-o>F<
autocmd Filetype html iabbrev <buffer> span,, <span></span><C-o>F<
autocmd Filetype html iabbrev <buffer> br,, <br></br><C-o>F<
autocmd Filetype html iabbrev <buffer> hr,, <hr></hr><C-o>F<
autocmd Filetype html iabbrev <buffer> strong,, <strong></strong><C-o>F<
autocmd Filetype html iabbrev <buffer> em,, <em></em><C-o>F<
autocmd Filetype html iabbrev <buffer> blockquote,, <blockquote></blockquote><C-o>F<
autocmd Filetype html iabbrev <buffer> cite,, <cite></cite><C-o>F<
autocmd Filetype html iabbrev <buffer> code,, <code></code><C-o>F<
autocmd Filetype html iabbrev <buffer> pre,, <pre></pre><C-o>F<
autocmd Filetype html iabbrev <buffer> form,, <form></form><C-o>F<
autocmd Filetype html iabbrev <buffer> input,,      <input></input><C-o>F<
autocmd Filetype html iabbrev <buffer> textarea,, <textarea></textarea><C-o>F<
autocmd Filetype html iabbrev <buffer> select,, <select></select><C-o>F<
autocmd Filetype html iabbrev <buffer> option,, <option></option><C-o>F<
autocmd Filetype html iabbrev <buffer> button,, <button></button><C-o>F<
autocmd Filetype html iabbrev <buffer> label,, <label></label><C-o>F<
autocmd Filetype html iabbrev <buffer> iframe,, <iframe></iframe><C-o>F<
autocmd Filetype html iabbrev <buffer> table,, <table></table><C-o>F<
autocmd Filetype html iabbrev <buffer> tr, <tr></tr><C-o>F<
autocmd Filetype html iabbrev <buffer> th, <th></th><C-o>F<
autocmd Filetype html iabbrev <buffer> td, <td></td><C-o>F<
autocmd Filetype html iabbrev <buffer> thead,, <thead></thead><C-o>F<
autocmd Filetype html iabbrev <buffer> tbody,, <tbody></tbody><C-o>F<
autocmd Filetype html iabbrev <buffer> tfoot,, <tfoot></tfoot><C-o>F<
autocmd Filetype html iabbrev <buffer> abbr,, <abbr></abbr><C-o>F<
autocmd Filetype html iabbrev <buffer> address,, <address></address><C-o>F<
autocmd Filetype html iabbrev <buffer> meta,, <meta></meta><C-o>F<
" }}}
"   Python abbreviations {{{2

autocmd Filetype python iabbrev <buffer> match,, match :<CR>#cases<cr>case :<C-o>2k<Left>
autocmd Filetype python iabbrev <buffer> case,, <CR><BS>case :<Left>
autocmd Filetype python iabbrev <buffer> for,, for element in list:<CR>#code
autocmd Filetype python iabbrev <buffer> if,, if :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> elif,, elif :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> whi,, while :<CR>#code<up><End><Left>
autocmd Filetype python iabbrev <buffer> pr,, print()<left>
autocmd Filetype python iabbrev <buffer> def,, def ():<CR>#code<CR>pass<C-o>2k<C-o>2h
autocmd FileType python iabbrev <buffer> sec,, #  {{{<CR><Down># <C-o>2k
autocmd Filetype python iabbrev <buffer> lmb,, lambda x: 
"  Orgmode abbreviations {{{2
autocmd Filetype org iabbrev <buffer> h1,, * 
autocmd Filetype org iabbrev <buffer> h2,, ** 
autocmd Filetype org iabbrev <buffer> h3,, *** 
autocmd Filetype org iabbrev <buffer> h4,, **** 
autocmd Filetype org iabbrev <buffer> h5,, ***** 
autocmd Filetype org iabbrev <buffer> h6,, ****** 
autocmd Filetype org iabbrev <buffer> cb,, <C-o>o- [<Space><BS><Right><Right> 
autocmd Filetype org iabbrev <buffer> biblio,, <C-o>o* Bibliografía<C-o>o#+print_bibliography:
autocmd Filetype org iabbrev <buffer> it,, <C-o>o- 
autocmd FileType org iabbrev <buffer> mon,, ==<Left>
autocmd Filetype org iabbrev <buffer> stk,, ++<Left>
autocmd Filetype org iabbrev <buffer> ita,, //<Left>
autocmd Filetype org iabbrev <buffer> bo,, **<Left>
autocmd Filetype org iabbrev <buffer> und,, __<Left>
autocmd Filetype org iabbrev <buffer> ct,, [cite:<Left>@@
autocmd Filetype org iabbrev <buffer> tc,, [cite/t:<Left>@@
autocmd Filetype org iabbrev <buffer> eqi,, \(  \)<C-o>2h
autocmd Filetype org iabbrev <buffer> eqo,, <C-o>o$$  $$<CR>{#eq:tagpending}<up><C-o>2h
autocmd Filetype org iabbrev <buffer> filet,, #+FILETAGS: ::<Left>
" Code caption {{{3
autocmd Filetype org iabbrev <buffer> src,, #+BEGIN_SRC 
      \<Esc>2i
      \<CR><Esc>i#+END_SRC<C-o>2k<C-o>$<Space>
" }}}
" Table caption {{{3
autocmd FileType org iabbrev <buffer> capt,, #+NAME: 
      \<C-o>o#+LABEL: tbl:
      \<C-o>o#+CAPTION: ""
" }}}
" Figure caption {{{3
autocmd FileType org iabbrev <buffer> capf,, #+NAME: 
      \<C-o>o#+LABEL: fig:
      \<C-o>o#+CAPTION: ""
" }}}
" kickstart for orgmode {{{3
autocmd FileType org iabbrev <buffer> start,, #+TITLE: DocumentName
      \<C-o>o#+AUTHOR: Marco Antonio Romero
      \<C-o>o#+DATE: Fecha
      \<C-o>o#+cite_export: natbib
      \<C-o>o#+FILETAGS:
      \<C-o>o#+NOCITE: "@*"
" }}}
" }}}
