" vim: set fdm=marker:
"
" ######
" #     # #      #    #  ####   ####   ####  #    # ######  ####
" #     # #      #    # #    # #    # #    # ##   # #      #
" ######  #      #    # #      #      #    # # #  # #####   ####
" #       #      #    # #  ### #      #    # #  # # #           #
" #       #      #    # #    # #    # #    # #   ## #      #    #
" #       ######  ####   ####   ####   ####  #    # #       ####
 "
"
" Plugin configurations {{{1

let g:indentLine_setConceal=0
let g:indentLine_faster=1

" let 
" autocmd BufEnter,WinEnter,WinNew,FileType nerdtree call Togglerainbowconceal()
" autocmd WinEnter,WinLeave,BufWritePre,FileType * call Toggleambiwidth()
" Lens settings {{{2
"  .
"  /       ___  , __     ____
"  |     .'   ` |'  `.  (
"  |     |----' |    |  `--.
"  /---/ `.___, /    | \___.'
let g:lens#height_resize_min=12
let g:lens#width_resize_min=2

" Fern Settings {{{2
"
"     _/_/_/_/
"    _/        _/_/    _/  _/_/  _/_/_/
"   _/_/_/  _/_/_/_/  _/_/      _/    _/
"  _/      _/        _/        _/    _/
" _/        _/_/_/  _/        _/    _/

let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

function Toggleambiwidth()
  if &ambiwidth=='single' 
    if &filetype=='nerdtree'
      let &ambiwidth='double'
      execute 'RainbowToggleOff'
    elseif &filetype=='fern'
      let &ambiwidth='double'
    endif
  else
    let &ambiwidth='single'
  endif
endfunction
function Togglerainbowconceal()
  if &filetype=='nerdtree'
    execute 'RainbowToggleOff'
  endif
endfunction
let g:fern#renderer#default#leading = ' '
let g:fern#renderer#nerdfont#padding= ' '
let g:WebDevIconsNerdTreeAfterGlyphPadding = '   -'
" Goyo settings {{{2
"
"         ___               ___   ___
"    .'|=|_.'    .'|=|`.   |   | |   |   .'|=|`.
"  .'  |___    .'  | |  `. `.  |_|  .' .'  | |  `.
"  |   |`._|=. |   | |   |   `.   .'   |   | |   |
"  `.  |  __|| `.  | |  .'    |   |    `.  | |  .'
"    `.|=|_.''   `.|=|.'      |___|      `.|=|.'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:Hexokinase_highlighters = ['backgroundfull']
" let g:Hexokinase_highlighters = ['virtual']
" red blue green #0900F9 rgb(13,85,19)o
let g:EasyMotion_do_mapping=1

