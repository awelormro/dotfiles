iabbrev <buffer> iif if cthen<CR>end<up><Right>
iabbrev <buffer> ffo for iin j do<CR>end<Up><Right>
iabbrev <buffer> wwh while cdo<CR>end<C-o>==end<Up><Right><Right><Right><Right>
iabbrev <buffer> ffu function()<CR>end<Up><C-o>$<Left><Left>
iabbrev <buffer> mfu M. = function()<CR>end<Up><Left>
iabbrev <buffer> lle let = <Left><Left><Left>
iabbrev <buffer> mstart local M = {}<CR><CR><CR><CR>return M<Up><Up><C-R>=Eatchar('\s')<CR>
iabbrev <buffer> vfn vim.fn.<C-R>=Eatchar('\s')<CR>
iabbrev <buffer> vpi vim.api.<C-R>=Eatchar('\s')<CR>
nnoremap <buffer><silent> zuz :LspFold<CR>
nnoremap <buffer><silent> <C-w>d :LspDiag current<CR>
nnoremap <buffer><silent> ]d :LspDiag next<CR>
nnoremap <buffer><silent> [d :LspDiag prev<CR>
nnoremap <buffer><silent> <leader>h :LspHover<CR>
iabbrev <buffer> luav -- @diagnostic disable-next-line: lowercase-global<CR>vim = vim<C-R>=Eatchar('\s')<CR>
setlocal foldcolumn=0
setlocal complete=o^12,FCompleteLuaApi^10,FComplete_Abbrevs^4
set complete+=FCompletion_files^10
fun! CompleteLuaApi(findstart, base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] == '.')
      let start -= 1
    endwhile
    return start
  else
    let res = []
    let all_pos = [
          \ {'word': 'vim.nvim.api', 'info': 'start nvim api' },
          \ {'word': 'vim.g', 'info': 'Lua global var'},
          \ {'word': 'vim.b.', 'info': 'Lua buffer var'},
          \ {'word': 'vim.v.', 'info': 'Lua environment var'},
          \ {'word': 'vim.keymap.set', 'info': 'Lua neovim mapping'},
          \ {'word': 'nvim_buf_create_user_command(', 'info': '{buffer}, {name}, {command}, {opts}) Creates a buffer-local command user-commands'},
          \ {'word': 'vim.api.nvim_buf_get_lines',      'info': 'Get lines from a buffer'},
          \ {'word': 'vim.api.nvim_buf_set_lines',      'info': 'Set lines in a buffer'},
          \ {'word': 'vim.api.nvim_buf_get_text',       'info': 'Get text from a buffer range'},
          \ {'word': 'vim.api.nvim_buf_set_text',       'info': 'Set text in a buffer range'},
          \ {'word': 'vim.api.nvim_buf_get_offset',     'info': 'Get buffer offset for line'},
          \ {'word': 'vim.api.nvim_buf_get_var',        'info': 'Get buffer-scoped variable'},
          \ {'word': 'vim.api.nvim_buf_set_var',        'info': 'Set buffer-scoped variable'},
          \ {'word': 'vim.api.nvim_buf_del_var',        'info': 'Delete buffer-scoped variable'},
          \ {'word': 'vim.api.nvim_buf_get_option',     'info': 'Get buffer option value'},
          \ {'word': 'vim.api.nvim_buf_set_option',     'info': 'Set buffer option value'},
          \ {'word': 'vim.api.nvim_buf_get_name',       'info': 'Get buffer name'},
          \ {'word': 'vim.api.nvim_buf_set_name',       'info': 'Set buffer name'},
          \ {'word': 'vim.api.nvim_buf_is_loaded',      'info': 'Check if buffer is loaded'},
          \ {'word': 'vim.api.nvim_buf_is_valid',       'info': 'Check if buffer is valid'},
          \ {'word': 'vim.api.nvim_buf_add_highlight',  'info': 'Add highlight to buffer'},
          \ {'word': 'vim.api.nvim_buf_clear_namespace','info': 'Clear highlights in namespace'},
          \ {'word': 'vim.api.nvim_buf_create_user_command', 'info': 'Create buffer-local user command'},
          \ {'word': 'vim.api.nvim_win_get_buf',        'info': 'Get window buffer'},
          \ {'word': 'vim.api.nvim_win_set_buf',        'info': 'Set window buffer'},
          \ {'word': 'vim.api.nvim_win_get_cursor',     'info': 'Get window cursor position'},
          \ {'word': 'vim.api.nvim_win_set_cursor',     'info': 'Set window cursor position'},
          \ {'word': 'vim.api.nvim_win_get_height',     'info': 'Get window height'},
          \ {'word': 'vim.api.nvim_win_set_height',     'info': 'Set window height'},
          \ {'word': 'vim.api.nvim_win_get_width',      'info': 'Get window width'},
          \ {'word': 'vim.api.nvim_win_set_width',      'info': 'Set window width'},
          \ {'word': 'vim.api.nvim_win_get_option',     'info': 'Get window option'},
          \ {'word': 'vim.api.nvim_win_set_option',     'info': 'Set window option'},
          \ {'word': 'vim.api.nvim_win_get_position',   'info': 'Get window position'},
          \ {'word': 'vim.api.nvim_win_get_tabpage',    'info': 'Get window tabpage'},
          \ {'word': 'vim.api.nvim_win_is_valid',       'info': 'Check if window is valid'},
          \ {'word': 'vim.api.nvim_tabpage_list_wins',  'info': 'List windows in tabpage'},
          \ {'word': 'vim.api.nvim_tabpage_get_win',    'info': 'Get tabpage current window'},
          \ {'word': 'vim.api.nvim_tabpage_is_valid',   'info': 'Check if tabpage is valid'},
          \ {'word': 'vim.api.nvim_create_namespace',   'info': 'Create new highlight namespace'},
          \ {'word': 'vim.api.nvim_get_namespaces',     'info': 'Get all highlight namespaces'},
          \ {'word': 'vim.api.nvim_create_autocmd',     'info': 'Create autocommand'},
          \ {'word': 'vim.api.nvim_clear_autocmds',     'info': 'Clear autocommands'},
          \ {'word': 'vim.api.nvim_create_augroup',     'info': 'Create autocommand group'},
          \ {'word': 'vim.api.nvim_del_augroup_by_id',  'info': 'Delete autocommand group by ID'},
          \ {'word': 'vim.api.nvim_exec_autocmds',      'info': 'Execute autocommands'},
          \ {'word': 'vim.api.nvim_get_autocmds',       'info': 'Get autocommands'}
          \]
    let vim_api = [
          \ {'word': '', 'info': ''},
          \ ]
    for m in all_pos
      if m['word'] =~ '^' .. a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfun
