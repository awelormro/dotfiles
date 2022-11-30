"     _    _      _ _                                   __
"    / \  (_)_ __| (_)_ __   ___        ___ ___  _ __  / _|___
"   / _ \ | | '__| | | '_ \ / _ \_____ / __/ _ \| '_ \| |_/ __|
"  / ___ \| | |  | | | | | |  __/_____| (_| (_) | | | |  _\__ \
" /_/   \_\_|_|  |_|_|_| |_|\___|      \___\___/|_| |_|_| |___/


" Enable Vim airline powerfonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
" let g:airline#extensions#tabline#right_alt_sep = ' '
" let g:airline#extensions#tabline#right_sep = ' '
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''
  let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#show_close_button = 1
" Enable show only the first letter of the current mode
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }

" Enables modify airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.maxlinenr = ''

  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
    " section_separators = { left = '', right = '' },
    " inactive_sections_separator={ left = '', right = '' },

    " component_separators = { left = '', right = '' },
