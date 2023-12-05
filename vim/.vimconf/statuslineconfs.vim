" vim: set fdm=marker:
" Devicons custom sources {{{
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tex'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''
" }}}
if statusbar==1
" 󱡽  Airline settings {{{1
"       >>                    >=>
"      >>=>       >>          >=>  >>
"     >> >=>         >> >==>  >=>     >==>>==>    >==>
"    >=>  >=>    >=>  >=>     >=> >=>  >=>  >=> >>   >=>
"   >=====>>=>   >=>  >=>     >=> >=>  >=>  >=> >>===>>=>
"  >=>      >=>  >=>  >=>     >=> >=>  >=>  >=> >>
" >=>        >=> >=> >==>    >==> >=> >==>  >=>  >====>
" Airline settings {{{2
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

let g:airline#extensions#tabline#enabled = 1

" Enable Vim airline powerfonts and tabline {{{3
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


" Enable show only the first letter of the current mode {{{2
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

" Enables modify airline symbols {{{2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_stl_path_style = 'short'

" Refresh some filetypes {{{2
au Bufenter *.org  AirlineRefresh
" }}}
" }}}
elseif statusbar==2
" 󰛓 Lightline settings {{{1
"   db      d888888b  d888b  db   db d888888b db      d888888b d8b   db d88888b
"   88        `88'   88' Y8b 88   88 `~~88~~' 88        `88'   888o  88 88'
"   88         88    88      88ooo88    88    88         88    88V8o 88 88ooooo
"   88         88    88  ooo 88~~~88    88    88         88    88 V8o88 88~~~~~
"   88booo.   .88.   88. ~8~ 88   88    88    88booo.   .88.   88  V888 88.
"   Y88888P Y888888P  Y888P  YP   YP    YP    Y88888P Y888888P VP   V8P Y88888P
" Lightline variables {{{2
set laststatus=2
set showtabline=2
if !has('gui_running')
  set t_Co=256
endif

" Lightline main dictionary configuration {{{2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], 
      \           [ 'readonly', 'filename', 'modified', 'gitbranch', 'githunks' ] 
      \           ]
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'githunks': 'LightlineGitGutter',
			\   'gitbranch': 'FugitiveHead',
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
" Lightline addons for the main dictionary {{{2
let g:lightline.mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'V-L',
      \ "\<C-v>": 'V-B',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'S-L',
      \ "\<C-s>": 'S-B',
      \ 't': 'T',
      \ }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline#bufferline#enable_devicons=1

" Lightline functions configuration {{{2
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlineGitGutter()
  if !get(g:, 'gitgutter_enabled', 0) || empty(FugitiveHead())
    return ''
  endif
  let [ l:added, l:modified, l:removed ] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', l:added, l:modified, l:removed)
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
" }}}
" }}}
elseif statusbar==3
"  Minimal statusline {{{1

" Status Line Custom {{{2
let g:currentmode={
    \ 'n'  : 'N',
    \ 'no' : 'N-Op',
    \ 'v'  : 'V',
    \ 'V'  : 'V-Ln',
    \ '^V' : 'V-Bl',
    \ 's'  : 'S',
    \ 'S'  : 'S-Ln',
    \ '^S' : 'S-Bl',
    \ 'i'  : 'I',
    \ 'R'  : 'Rp',
    \ 'Rv' : 'V-Rp',
    \ 'c'  : 'C',
    \ 'cv' : 'Vim-Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Pr',
    \ 'rm' : '+',
    \ 'r?' : '?',
    \ '!'  : 'Sh',
    \ 't'  : 'T'
    \}
" custom highlight groups {{{2
" hi! def link StatusLine Normal
" status bar colors
function Generatecustomhl(HlIn,HlAux,HlOut,HlProperty,HlBackground,HlPart)
  let LinkedProperty=synIDattr(hlID(a:HlIn), a:HlProperty, a:HlBackground)
  if empty(LinkedProperty)
    let LinkedProperty=synIDattr(hlID(a:HlAux),a:HlProperty,a:HlBackground)
  endif
  if empty(LinkedProperty)
    return ''
  else
    return a:HlPart.'='.LinkedProperty
  endif
endfunction

function GenerateHl(StyleText,StyleBorders)
  let guifg=Generatecustomhl('StatusLine','Normal','Boolean','bg','GUI','guifg')
  let guibg=Generatecustomhl('StatusLine','Normal','Boolean','fg','GUI','guibg')
  let ctermfg=Generatecustomhl('StatusLine','Normal','Boolean','bg','cterm','ctermfg')
  let ctermbg=Generatecustomhl('StatusLine','Normal','Boolean','fg','cterm','ctermbg')
  " let g: guibg.' '.guifg.' '.ctermfg.' '.ctermbg
  execute 'hi '
endfunction

function Configurehighlighseps(hiname,hiname2,hl1,hl2)
  let Linkfg1=synIDattr(hlID(a:hl1),'fg','cterm')
  if empty(Linkfg1)
    let Linkfg1=synIDattr(hlID(a:hl1),'fg','cterm')
  endif
  let Linkfg2=synIDattr(hlID(a:hl2),'bg','cterm')
  if empty(Linkfg2)
    let Linkfg2=synIDattr(hlID(a:hl2),'bg','cterm')
  endif
  let Linkfg3=synIDattr(hlID(a:hl1),'fg')
  if empty(Linkfg3)
    let Linkfg3=synIDattr(hlID(a:hl1),'fg')
  endif
  let Linkfg4=synIDattr(hlID(a:hl2),'bg')
  if empty(Linkfg4)
    let Linkfg4=synIDattr(hlID(a:hl2),'bg')
  endif
  if (empty(Linkfg1) || empty(Linkfg2))==1 || (empty(Linkfg1) && empty(Linkfg2))==1
    echo "no ctermargs"
    execute "hi ".a:hiname." guibg=".Linkfg3." guifg=".Linkfg4
    execute "hi ".a:hiname2." guibg=".Linkfg4." guifg=".Linkfg3
  elseif (empty(Linkfg3)==1 || empty(Linkfg3))==1 ||  (empty(Linkfg3)==1 && empty(Linkfg3))==1
    echo "no guiargs"
    execute "hi ".a:hiname." ctermbg=".Linkfg1." ctermfg=".Linkfg2
    execute "hi ".a:hiname2." ctermbg=".Linkfg2." ctermfg=".Linkfg1
  else
    execute "hi ".a:hiname." ctermbg=".Linkfg1." ctermfg=".Linkfg2." guibg=".Linkfg3." guifg=".Linkfg4
    execute "hi ".a:hiname2." ctermbg=".Linkfg2." ctermfg=".Linkfg1." guibg=".Linkfg4." guifg=".Linkfg3
  endif
endfunction
" call Configurehighlighseps("Custom2","Custom1","StatusLine","Normal")
" autocmd ColorScheme * call Configurehighlighseps("Custom2","Custom1","StatusLine","Normal")
" Statusline configuration {{{2
set laststatus=2
set noshowmode
set statusline=
" set statusline+=%#IsModified#%{&mod?expand('%'):''}%*%#IsNotModified#%{&mod?'':expand('%')}%*
set statusline+=%0#Custom1#
set statusline+=%#Custom2#\%{toupper(g:currentmode[mode()])}  " The current mode
set statusline+=%0#Custom1#\
set statusline+=%0#MoreMsg#\
set statusline+=%#MoreMsg#%<%F%m%r%h%w.15                       " File path, modified, readonly, helpfile, preview
set statusline+=%#MoreMsg#                                     " Separator
set statusline+=%0#Custom1#
set statusline+=%0#Custom2#%n                                 " Buffer number
set statusline+=%0#Custom1#\
set statusline+=%0#MoreMsg#\
set statusline+=%2*%Y\                                 " FileType
set statusline+=%2#FoldColumn#\ %{WebDevIconsGetFileTypeSymbol()}\ 
" set statusline+=%3*\ │                                     " Separator
set statusline+=%#MoreMsg#\                               " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%3*                                     " Separator
set statusline+=%2*:\ %02v\                         " Colomn number
set statusline+=%#MoreMsg#\                               " Separator
" set statusline+=%3*│                                     " Separator
set statusline+=%3*                                     " Separator
set statusline+=%1*\ :\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%1*\                                     " Separator

" hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
" hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
" hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
" hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
" }}}
" }}}
endif
