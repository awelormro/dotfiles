
let g:nerdfont#directory#customs = {
      \ '': '',
      \ 'open': '',
      \ 'close': '',
      \ 'symlink': '󰴌',
      \}

let g:glyph_palette#palette = {
      \ 'GlyphPalette1': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette2': ['', ' ', ' ', ' ', ' ', ' ', '󰡄 ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette3': ['λ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ '', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', '', '', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette4': [' ', ' ', ' ', ' ', ' ', 
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette6': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' '],
      \ 'GlyphPalette7': [' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] ,
      \ 'GlyphPalette9': [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
      \ ' ', ' ', ' ', ' ',' '],
      \ 'GlyphPaletteDirectory': [' ', ' ', ' ', ' ', ' ', ' '],
      \}

let g:fern#renderer = "nerdfont"
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

let g:nerdfont#path#extension#customs = {
      \ 'tex': '',
      \ 'org': '',
      \}

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
  autocmd FileType fern call s:fern_settings()
augroup END
