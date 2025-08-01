vim9script
# Abbreviatures generated {{{
inoreabbrev <buffer> iif if:<CR>pass<up><C-o>$<Left>
inoreabbrev <buffer> wwh while:<CR>pass<up><C-o>$<Left>
inoreabbrev <buffer> ffo for in:<CR>pass<Left>
inoreabbrev <buffer> vvf vim.Function("")<Left><Left><C-R>=Eatchar('\s')<CR>
inoreabbrev <buffer> vcb vim.current.buffer<C-R>=Eatchar('\s')<CR>
inoreabbrev <buffer> vvc vim.command("")<Left><Left><C-R>=Eatchar('\s')<CR>
# }}}
# Mapping Generation {{{
nnoremap <buffer><silent> zuz :LspFold<CR>
nnoremap <buffer><silent> <C-w>d :LspDiag current<CR>
nnoremap <buffer><silent> ]d :LspDiag next<CR>
nnoremap <buffer><silent> [d :LspDiag prev<CR>
nnoremap <buffer><silent> <leader>h :LspHover<CR>
# }}}
# Options generation {{{
setlocal tabstop=4 shiftwidth=4
setlocal complete=o^15,FCompletePyApi^10,FComplete_Abbrevs^4
setlocal complete+=FCompletion_files^10
setlocal foldcolumn=0

# }}}
def g:CompletePyApi(findstart: any, base: any): any # {{{
  if findstart
    # Verify First Status {{{
    var line = getline('.')
    var start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      start -= 1
    endwhile
    return start
    # }}}
  else
    # Start to get all values {{{
    var res = []
    var line = getline('.')
    var start = col('.') - 1
    var all_pos = []
    # }}}
    # Loop to obtain the verifier string {{{
    while start > 0
      if line[start - 1] == ' '
        break
      else
        start -= 1
      endif
    endwhile
    # }}}
    var colstart = col('.') - 1
    # Status verifier if empty {{{
    if start == colstart
      res = [
        {'word': 'vim.', 'info': 'Start vim api'},
      ]
      return res
    endif
    # }}}
    var checkpos = line[start : colstart]
    b:enabled_curr_buf = 1
    # Check for the status generated {{{
    # Vim.vars {{{
    if checkpos =~ 'vim.current.buffer.vars\["' || checkpos =~ "vim.current.buffer.vars\['"
      all_pos = getcompletion('let b:', 'cmdline')
      for m in all_pos
        if m[2 :] =~ '^' .. base
          add(res, m[2 :])
        endif
      endfor
      return res
    # }}}
    # Current buffer status {{{
    elseif checkpos =~ 'vim.current.buffer.'
      all_pos = [
        {'word': 'vars', 'info': ' Dictionary-like object used to access buffer-variables.'},
        {'word': 'options', 'info':  'Mapping object (supports item getting, setting and deleting) that provides access to buffer-local options and buffer-local values of |global-local| options. Use python-window.options if option is window-local, this object will raise KeyError. If option is global-local and local value is missing getting it   will return None'},
        {'word': 'name', 'info': 'String, RW. Contains buffer name (full path). Note: when assigning to b.name BufFilePre and BufFilePost autocommands are launched.'},
        {'word': 'number', 'info': 'Buffer number. Can be used as |python-buffers| key. Read-only.'},
        {'word': 'valid', 'info': 'True or False. Buffer object becomes invalid when corresponding buffer is wiped out.'},
        {'word': 'append', 'info': '(str) Append a line to the buffer, (str, nr)  Idem, below line "nr", (list) Append a list of lines to the buffer, (list, nr)  Idem, below line "nr"'},
        {'word': 'mark', 'info': '(name) Return a tuple (row,col) representing the position of the named mark (can also get the []"<> marks)'},
        {'word': 'range', 'info': '(s,e)  Return a range object (see |python-range|) which  represents the part of the given buffer between line  numbers s and e |inclusive|.'},
      ]
    # }}}
    # Current window {{{
    elseif checkpos =~ 'vim.current.window.'
      all_pos = [
        {'word': 'buffer', 'info': '(read-only) The buffer displayed in this window'},
        {'word': 'cursor', 'info': '(read-write) The current cursor position in the window'},
        {'word': 'height', 'info': '(read-write) The window height, in rows'},
        {'word': 'width', 'info': '(read-write) The window width, in columns'},
        {'word': 'vars', 'info': '(read-only)  The window w: variables. Attribute is unassignable, but you can change window variables this way'},
        {'word': 'options', 'info': '(read-only) The window-local options. Attribute is unassignable, but you can change window options this way. Provides access only to window-local options, for buffer-local use python-buffer and for global ones use python-options. If option is global-local and local value is missing getting it will return None.'},
        {'word': 'number', 'info': '(read-only)  Window number.  The first window has number 1. This is zero in case it cannot be determined (e.g. when the window object belongs to other tab page).'},
        {'word': 'row', 'info': 'On-screen window position in display cells. First position is zero.'},
        {'word': 'col', 'info': 'On-screen window position in display cells. First position is zero.'},
        {'word': 'tabpage', 'info': '(read-only)  Window tab page.'},
        {'word': 'valid', 'info': '(read-write)  True or False. Window object becomes invalid when corresponding window is closed.'}
      ]
    # }}}
    # Windows module {{{
    elseif checkpos =~ 'vim.windows\[\d* ].'
      all_pos = [
        {'word': 'buffer', 'info': '(read-only) The buffer displayed in this window'},
        {'word': 'cursor', 'info': '(read-write) The current cursor position in the window'},
        {'word': 'height', 'info': '(read-write) The window height, in rows'},
        {'word': 'width', 'info': '(read-write) The window width, in columns'},
        {'word': 'vars', 'info': '(read-only)  The window w: variables. Attribute is unassignable, but you can change window variables this way'},
        {'word': 'options', 'info': '(read-only) The window-local options. Attribute is unassignable, but you can change window options this way. Provides access only to window-local options, for buffer-local use python-buffer and for global ones use python-options. If option is global-local and local value is missing getting it will return None.'},
        {'word': 'number', 'info': '(read-only)  Window number.  The first window has number 1. This is zero in case it cannot be determined (e.g. when the window object belongs to other tab page).'},
        {'word': 'row', 'info': 'On-screen window position in display cells. First position is zero.'},
        {'word': 'col', 'info': 'On-screen window position in display cells. First position is zero.'},
        {'word': 'tabpage', 'info': '(read-only)  Window tab page.'},
        {'word': 'valid', 'info': '(read-write)  True or False. Window object becomes invalid when corresponding window is closed.'}
      ]
    # }}}
    # Current Range {{{
    elseif checkpos =~ 'vim.current.range'
      all_pos = [
        {'word': 'start', 'info': 'Attr: Index of first line into the buffer'},
        {'word': 'end', 'info': 'Attr: Index of last line into the buffer'},
        {'word': 'append', 'info': 'Methods: (str)	Append a line to the range, (str, nr) Idem, after line "nr", (list) Append a list of lines to the range, Note that the option of supplying a list of strings to the append method differs from the equivalent method for Python built-in list objects. (list, nr)  Idem, after line "nr"'},
      ]
    # }}}
    # range Sector {{{
    elseif checkpos =~ 'vim.range\[\d* ].'
      all_pos = [
        {'word': 'start', 'info': 'Attr: Index of first line into the buffer'},
        {'word': 'end', 'info': 'Attr: Index of last line into the buffer'},
        {'word': 'append', 'info': 'Methods: (str)	Append a line to the range, (str, nr) Idem, after line "nr", (list) Append a list of lines to the range, Note that the option of supplying a list of strings to the append method differs from the equivalent method for Python built-in list objects. (list, nr)  Idem, after line "nr"'},
      ]
    # }}}
    # Only vim.current {{{
    elseif checkpos =~ 'vim.current.'
      all_pos = [
        {'word': 'buffer',  'info': 'Get the current buffer object'},
        {'word': 'line',    'info': 'Get or set the current line text'},
        {'word': 'range',   'info': 'Get the current range object'},
        {'word': 'tabpage', 'info': 'Get the current tabpage object'},
        {'word': 'window',  'info': 'Get the current window object'},
      ]
    # }}}
    # Vim.Function {{{
    elseif checkpos =~ 'vim.Function("' || checkpos =~ "vim.Function('"
      all_pos = getcompletion('call ', 'cmdline')
      for m in all_pos
        if m =~ '^' .. base
          var ma = substitute(substitute(m, '(', '', ''), ')', '', '')
          add(res, ma)
        endif
      endfor
      return res
    # }}}
    # Vim.vars module {{{
    elseif checkpos =~ 'vim.vars\["' || checkpos =~ "vim.vars['"
      all_pos = getcompletion('let g:', 'cmdline')
      for m in all_pos
        if m[2 :] =~ '^' .. base
          add(res, m[2 :])
        endif
      endfor
      return res
    # }}}
    # Vim.vvars module v: {{{
    elseif checkpos =~ 'vim.vvars\["' || checkpos =~ "vim.vvars['"
      all_pos = getcompletion('let v:', 'cmdline')
      for m in all_pos
        if m[2 :] =~ '^' .. base
          add(res, m[2 :])
        endif
      endfor
      return res
    # }}}
    # vim. module start {{{
    elseif checkpos =~ 'vim.'
      all_pos = [
        {'word': 'command',  'info': 'vim.command(str) Executes the vim (ex-mode) command str.  Returns None.	Examples: :py vim.command("set tw=72") :py vim.command("%s/aaa/bbb/g")'},
        {'word': 'Function',  'info': 'Function-like object, acting like vim |Funcref| object. Accepts special keyword argument `self`, see |Dictionary-function|. You can also use `vim.Function(name)` constructor, it is the same as `vim.bindeval("function(%s)"%json.dumps(name))`.'},
        {'word': 'current', 'info': 'current syntax'},
        {'word': 'buffers', 'info': 'Select buffer by index'},
        {'word': 'windows', 'info': 'Select window by index'},
        {'word': 'tabpages', 'info': 'Select tabpage by index'},
        {'word': 'tabpages', 'info': 'Select tabpage by index'},
        {'word': 'vars', 'info': 'Dictionary-like objects holding dictionaries with global (|g:|) variables respectively. Identical to `vim.bindeval("g:")`, but faster.'},
        {'word': 'vvars', 'info': 'Dictionary-like objects holding dictionaries vim (|v:|) variables respectively. Identical to `vim.bindeval("v:")`, but faster.'},
        {'word': 'options', 'info': 'Object partly supporting mapping protocol (supports setting and getting items) providing a read-write access to global options. Note: unlike |:set| this provides access only to global options. You cannot use this object to obtain or set local options values or 	access local-only options in any fashion. Raises KeyError if no global option with such name exists (i.e. does not raise KeyError for global-local options and global only options, but does for window-and buffer-local ones).  Use |python-buffer| objects to access to buffer-local options and |python-window| objects to access to	window-local options.'},
      ]
    # }}}
    # All aviable options {{{
    else
      all_pos = [
        {'word': 'vim.Blob',            'info': 'Create a Vim-compatible blob'},
        {'word': 'vim.Dictionary',      'info': 'Create a Vim-compatible dictionary'},
        {'word': 'vim.Function',        'info': 'Create a Python function object from VimScript'},
        {'word': 'vim.List',            'info': 'Create a Vim-compatible list'},
        {'word': 'vim.api',             'info': 'Access direct Nvim API (Neovim only)'},
        {'word': 'vim.async_call',      'info': 'Call a Python function asynchronously'},
        {'word': 'vim.bindeval',        'info': 'Evaluate expression keeping references'},
        {'word': 'vim.buffer.name',     'info': 'Get or set buffer filename'},
        {'word': 'vim.buffer.number',   'info': 'Get buffer number'},
        {'word': 'vim.buffer.options',  'info': 'Access buffer-local options'},
        {'word': 'vim.buffers',         'info': 'Dictionary of accessible buffers by number/id'},
        {'word': 'vim.call',            'info': 'Call Vim function with arguments'},
        {'word': 'vim.command',         'info': 'Execute an ex-mode (:) command in Vim'},
        {'word': 'vim.current.buffer',  'info': 'Get the current buffer object'},
        {'word': 'vim.current.line',    'info': 'Get or set the current line text'},
        {'word': 'vim.current.range',   'info': 'Get the current range object'},
        {'word': 'vim.current.tabpage', 'info': 'Get the current tabpage object'},
        {'word': 'vim.current.window',  'info': 'Get the current window object'},
        {'word': 'vim.echo',            'info': 'Display message in command line'},
        {'word': 'vim.error',           'info': 'Raise a Vim exception (sets v:errmsg)'},
        {'word': 'vim.eval',            'info': 'Evaluate a VimScript expression and return the result'},
        {'word': 'vim.find_module',     'info': 'Find Python module in runtimepath'},
        {'word': 'vim.foreach_rtp',     'info': 'Execute function for each runtimepath entry'},
        {'word': 'vim.funcs',           'info': 'Access global Vim functions'},
        {'word': 'vim.input',           'info': 'Prompt user for input'},
        {'word': 'vim.list_runtime_paths', 'info': 'Return list of paths in runtimepath'},
        {'word': 'vim.log',             'info': 'Write messages to Vim log'},
        {'word': 'vim.lua',             'info': 'Execute Lua code (if supported)'},
        {'word': 'vim.options',         'info': 'Dictionary of global options'},
        {'word': 'vim.rpcnotify',       'info': 'Send RPC notification (Neovim)'},
        {'word': 'vim.session',         'info': 'Access persistent session data'},
        {'word': 'vim.strwidth',        'info': 'Calculate the display width of a string'},
        {'word': 'vim.tabpage.var',     'info': 'Access tabpage-local variables (t:)'},
        {'word': 'vim.tabpage.windows', 'info': 'List windows in tabpage'},
        {'word': 'vim.tabpages',        'info': 'List of tabpages in the Vim instance'},
        {'word': 'vim.vars',            'info': 'Dictionary of global variables (g:)'},
        {'word': 'vim.vvars',           'info': 'Dictionary of special variables (v:)'},
        {'word': 'vim.window.cursor',   'info': 'Get or set cursor position (row,col)'},
        {'word': 'vim.window.height',   'info': 'Get or set window height'},
        {'word': 'vim.window.options',  'info': 'Access window-local options'},
        {'word': 'vim.window.width',    'info': 'Get or set window width'},
        {'word': 'vim.windows',         'info': 'List of windows in current tabpage'},
      ]
    # }}}
    endif
    # }}}
    # Add to the function {{{
    for m in all_pos
      if m['word'] =~ '^' .. base
        add(res, m)
      endif
    endfor
    return res
    # }}}
  endif
enddef # }}}
