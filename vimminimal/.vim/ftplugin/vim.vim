iabbrev <buffer> iif if<CR>endif<up>
iabbrev <buffer> ddef def()<CR>enddef<Up><Left><Left>
iabbrev <buffer> ffu function()<CR>endfunction<Up><Left><Left>
iabbrev <buffer> wwh while<CR>endwhile<up>
iabbrev <buffer> ffo for <CR>endfor<up>in
iabbrev <buffer> getl getline('')<Left><Left><C-r>=Eatchar('\s')<CR>
iabbrev <buffer> lin line('')<Left><Left><C-r>=Eatchar('\s')<CR>
iabbrev <buffer> pyeof python3 << EOF<CR>EOF<C-o>O<C-r>=Eatchar('\s')<CR>
iabbrev <buffer> luaeof lua << EOF<CR>EOF<C-o>O<C-r>=Eatchar('\s')<CR>
setlocal foldmethod=marker
setlocal nospell
