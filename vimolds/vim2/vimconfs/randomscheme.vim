
" .---.                 .-.                           .-.
" : .; :                : :                           : :
" : .',   .--.  ,-.,-. .-', : .--. ,-.,-.,-. .--.  .--. : `-.  .--. ,-.,-.,-. .--.
" : :.`.', .; ; : ,. :', .; :', .; :: ,. ,. :`._-.'',  ..': .. :', '_.': ,. ,. :', '_.'
" :_;:_;`.__,_;:_;:_;`.__.'`.__.':_;:_;:_;`.__.'`.__.':_;:_;`.__.':_;:_;:_;`.__.'




function RandomColorSchemeMyPicks()
  let mypicks = [
    \ 'nightfox','nordfox',
    \ 'dracula',
    \ 'fogbell',
    \ 'nour','obsidian','obsidian2','atom',
    \ 'ayu','babymate256','badwolf', 
    \ 'base', 'base16-atelier-cave',
    \ 'base16-apathy', 
    \ 'base16-ateliercave','base16-atelier-dune',
    \ 'base16-atelier-estuary',
    \ 'base16-atelier-forest','base16-atelier-heath', 
    \ 'base16-atelier-lakeside',
    \  'base16-atelier-plateau','base16-atelier-sulphurpool','basic-dark',
    \ 'beekai', 'behelit', 'benlight', 'bensday', 'billw',
    \ 'birds-of-paradise','blackboard', 
    \ 'blackdust', 'blazer',
    \ 'bluechia', 'bluegreen','bluenes','blues','blugrine',
    \ 'boa','bocau','boltzmann','breezy','brighton','broduo',
    \ 'brogrammer','bubblegum','buddy',
    \ 'busybee','bvemu','nets-away','neuromancer',
    \ 'neverland-darker','neverland2-darker','neverness','night-owl',
  \]

  let mypick = mypicks[localtime() % len(mypicks)]
  echom mypick
  execute 'colorscheme '. mypick
  hi NonText guifg=bg
  hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

command NewColor call RandomColorSchemeMyPicks()

nnoremap <Leader>da :NewColor<CR>
nnoremap <Leader>br :colorscheme fogbell_light<CR>

let s:use_gui = exists('g:neovide') || has('gui_running') || (has('termguicolors') && &termguicolors)
if (s:use_gui)
  call RandomColorSchemeMyPicks()
endif

" cosas que no deberían de ponerse

hi NonText guifg=bg

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

function FixHiglightline()
  hi CursorLine term=bold cterm=bold guibg=Grey40
endfunction

command FixLine call FixHiglightline()

nnoremap <Leader>hi :FixLine<CR>

