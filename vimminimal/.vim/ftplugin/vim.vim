vim9script
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
setlocal complete+=FVimscComplete
setlocal nospell
def g:VimscComplete(findstart: any, base: any): any # {{{
  if findstart
    var line = getline('.')
    var start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\w'
      start -= 1
    endwhile
    return start
  else
    # Start to get all values {{{
    var res = []
    var res_partial = []
    var line = getline('.')
    var split_all = split(trim(line))
    var i = col('.') - 1
    var start_search = col('.') - 1
    while i > 0
      if line[i] == ' '
        break
      else
        i -= 1
      endif
    endwhile
    # }}}
    # Check the current path inclussion {{{
    if !exists('b:vim9_buffer')
      b:vim9_buffer = search('^\s*vim9script\*$', 'n')
    endif
    var comp_path = ''
    var flag_len = -1
    if i < start_search
      comp_path = line[i : start_search]
    endif
    var split_line = split(trim(line))
    if len(split_line) == 0
      res_partial = getcompletion('', 'cmdline')
      var search_commands = getcompletion('call ', 'cmdline')
      if b:vim9_buffer > -1
        res_partial += search_commands
      endif
    elseif len(split_line) == 1
      if split_line[0] =~ '^g:' || split_line[0] =~ '^v:' || split_line[0] =~ '^b:'
        res_partial = getcompletion('let ' .. split_line[0][: 2], 'cmdline')
        flag_len = 2
      else
        res_partial = getcompletion(split_line[0], 'cmdline' )
        var search_commands = getcompletion('call ', 'cmdline')
        if b:vim9_buffer > -1
          res_partial += search_commands
        endif
      endif
    elseif comp_path =~ '^g:' || comp_path =~ '^v:' || comp_path =~ '^b:'
      res_partial = getcompletion('let ' .. comp_path[: 2], 'cmdline')
      flag_len = 2
    else
      res_partial = getcompletion(split_line[0] .. ' ' .. comp_path, 'cmdline')
      var search_commands = getcompletion('call ', 'cmdline')
      if b:vim9_buffer > -1
        res_partial += search_commands
      endif
    endif
    # }}}
    # Loop to add options to the current value {{{
    
    if flag_len == -1
      for srch in res_partial
        if srch =~ '^' .. base
          add(res, srch) 
        endif
      endfor
    else
      for srch in res_partial
        if srch =~ '^' .. base
          add(res, srch[flag_len :]) 
        endif
      endfor
    endif
    return res
    # }}}
  endif
enddef # }}}
