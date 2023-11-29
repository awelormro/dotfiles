"
" vim: set fdm=marker:

" To add a custom read file from different parts of the line, just add
" r! sed -n 147,227p /path/to/foo/foo.c
" To add several 
" Use of abbreviations {{{1
inoremap <S-Space> ,,<C-]>
inoremap <C-f> <C-e><C-X><C-F>
imap <A-Space> <C-x><C-k>

" Vimscript abbreviations {{{2
autocmd Filetype vim iabbrev <buffer> f,, function (<Right><CR><CR>endfunction<Up><Up><Left><Left>
autocmd FileType vim iabbrev <buffer> wh,, while <CR><CR>endwhile<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> if,, if <CR><CR>endif<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> for,, for <CR><CR>endfor<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> let,, let  = <C-o>2h


" }}}
" LaTeX abbreviations {{{2
autocmd Filetype tex iabbrev <buffer> doc,, \begin{document}<CR><CR>\end{document}
autocmd Filetype tex iabbrev <buffer> fra,, \frac{<Right>{<Left><Left>
autocmd Filetype tex iabbrev <buffer> frc,, \frac{}{}<Esc>F\2F bvexf{pF\F bvex2f{pi
autocmd Filetype tex iabbrev <buffer> eq,, $  $<C-o>2<Left>
autocmd Filetype tex iabbrev <buffer> bo,, \textbf{}<Left>
autocmd FileType tex iabbrev <buffer> up,, \usepackage{
autocmd Filetype tex iabbrev <buffer> ita,, \textit{
autocmd Filetype tex iabbrev <buffer> ci,, \cite{
autocmd Filetype tex iabbrev <buffer> ca,, \caption{
autocmd Filetype tex iabbrev <buffer> lb,, \label{
autocmd Filetype tex iabbrev <buffer> rf,, \ref{
autocmd Filetype tex iabbrev <buffer> tc,, \textcite{
autocmd Filetype tex iabbrev <buffer> it,, <C-o>o\item<Space>
autocmd Filetype tex iabbrev <buffer> start,, <C-o>:r!sed -n 2,13p 
      \~/.vimconf/viminimal/abrevviatedfiles/texabbs.tex
      \<CR><Up><C-o>{<Down><BS><C-o>}
autocmd Filetype tex iabbrev <buffer> table,, <C-o>:r!sed -n 30,45p 
      \~/.vimconf/viminimal/abrevviatedfiles/texabbs.tex
      \<CR><Up><C-o>{<Down><BS><C-o>}
autocmd Filetype tex iabbrev <buffer> tabular,, <C-o>:r!sed -n 26,28p 
      \~/.vimconf/viminimal/abrevviatedfiles/texabbs.tex
      \<CR><Up><C-o>{<Down><BS><C-o>}
autocmd Filetype tex iabbrev <buffer> beg,, <C-o>:r!sed -n 18,20p 
      \~/.vimconf/viminimal/abrevviatedfiles/texabbs.tex
      \<CR><Up><C-o>{<Down><BS><C-o>}<C-o>cse
autocmd FileType tex iabbrev <buffer> biblatex,, <C-o>:r!sed -n 15,16p 
      \~/.vimconf/viminimal/abrevviatedfiles/texabbs.tex
      \<CR><Up><C-o>{<Down><BS><C-o>}
" html abbreviations {{{2

autocmd Filetype html iabbrev <buffer> h1,, <h1></h1><C-o>F<
autocmd Filetype html iabbrev <buffer> h2,, <h2></h2><C-o>F<
autocmd Filetype html iabbrev <buffer> h3,, <h3></h3><C-o>F<
autocmd Filetype html iabbrev <buffer> h4,, <h4></h4><C-o>F<
autocmd Filetype html iabbrev <buffer> h5,, <h5></h5><C-o>F<
autocmd Filetype html iabbrev <buffer> h6,, <h6></h6><C-o>F<
autocmd Filetype html iabbrev <buffer> strong,, <strong></strong><C-o>F<
autocmd Filetype html iabbrev <buffer> head,, <head></head><C-o>F<
autocmd FileType html iabbrev <buffer> img,, <img src=" alt="alias" width="500" height="600"><Esc>F<3w<Right><Right>i
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
" Python abbreviations {{{2

autocmd Filetype python iabbrev <buffer> match,, match :<CR>#cases<cr>case :<C-o>2k<Left>
autocmd Filetype python iabbrev <buffer> case,, <CR><BS>case :<Left>
autocmd Filetype python iabbrev <buffer> for,, for element in list:<CR>#code
autocmd Filetype python iabbrev <buffer> if,, if :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> elif,, elif :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> whi,, while :<CR>#code<up><End><Left>
autocmd Filetype python iabbrev <buffer> pr,, print()<left>
autocmd Filetype python iabbrev <buffer> def,, def ():<CR>#code<CR>pass<C-o>2k<C-o>2h

" Orgmode abbreviations {{{2

autocmd Filetype org iabbrev <buffer> h1,, * 
autocmd Filetype org iabbrev <buffer> h2,, ** 
autocmd Filetype org iabbrev <buffer> h3,, *** 
autocmd Filetype org iabbrev <buffer> h4,, **** 
autocmd Filetype org iabbrev <buffer> h5,, ***** 
autocmd Filetype org iabbrev <buffer> h6,, ****** 
autocmd Filetype org iabbrev <buffer> cb,, <C-o>o- [ <Right> 
autocmd Filetype org iabbrev <buffer> it,, <C-o>o- 
autocmd Filetype org iabbrev <buffer> stk,, ++<Left>
autocmd Filetype org iabbrev <buffer> ita,, //<Left>
autocmd Filetype org iabbrev <buffer> bo,, **<Left>
autocmd Filetype org iabbrev <buffer> und,, __<Left>
autocmd Filetype org iabbrev <buffer> ct,, [cite:<Left>@@
autocmd Filetype org iabbrev <buffer> tc,, [cite/t:<Left>@@

" }}}
