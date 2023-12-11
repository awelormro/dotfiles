" vim: set fdm=marker:
"
"  Fern location settings {{{

autocmd FileType fern setlocal nonumber
autocmd FileType fern setlocal norelativenumber
let g:nerdfont#directory#customs = {
      \ '': ' ',
      \ 'open': ' ',
      \ 'close': ' ',
      \ 'symlink': '󰴌 ',
      \}

function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
let g:fern#renderer = "nerdfont"
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
" }}}
" 󰹩 NERDTREE settings{{{
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = ''

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let NERDTreeShowHidden=1
" }}}
" 󰸌 Glyph pallette settings {{{

let g:nerdfont#path#extension#customs = {
      \ 'tex': '',
      \ 'org': '',
      \ '.config/': '󱂀'
      \}
" let g:nerdfont#autofix_cellwidths=1

" let g:glyph_palette#padding=1
let g:glyph_palette#palette = {
      \ 'GlyphPalette1': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette2': [' ', ' ', ' ', ' ', ' ', ' ', '󰡄 ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette3': ['λ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', '', '', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ],
      \ 'GlyphPalette4': [' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette6': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette7': [' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] ,
      \ 'GlyphPalette9': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ',' '],
      \ 'GlyphPaletteDirectory': [' ', ' ', ' ', ' ', ' ', '󱂀 ',' '],
      \}


	augroup my-glyph-palette
	  autocmd!
	  autocmd FileType fern call glyph_palette#apply()
	  autocmd FileType nerdtree call glyph_palette#apply()
	  autocmd FileType startify call glyph_palette#apply()
	augroup END
" }}}


