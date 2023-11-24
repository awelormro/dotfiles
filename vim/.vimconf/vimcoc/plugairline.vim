
" vim: set fdm=marker:
"       >>                    >=>
"      >>=>       >>          >=>  >>
"     >> >=>         >> >==>  >=>     >==>>==>    >==>
"    >=>  >=>    >=>  >=>     >=> >=>  >=>  >=> >>   >=>
"   >=====>>=>   >=>  >=>     >=> >=>  >=>  >=> >>===>>=>
"  >=>      >=>  >=>  >=>     >=> >=>  >=>  >=> >>
" >=>        >=> >=> >==>    >==> >=> >==>  >=>  >====>
" Airline settings {{{1


let g:airline#extensions#tabline#enabled = 1

" Enable Vim airline powerfonts and tabline {{{2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_type = 2
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#show_close_button = 0

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tex'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''


" Enable show only the first letter of the current mode {{{1
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

" Enables modify airline symbols {{{1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_stl_path_style = 'short'
let g:airline#extensions#coc#show_coc_status=0
" Refresh some filetypes {{{1
au Bufenter *.org  AirlineRefresh
