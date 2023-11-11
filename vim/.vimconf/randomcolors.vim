
" vim: set fdm=marker:
"
" Function to randomize colorscheme {{{1
" .---.                 .-.                           .-.
" : .; :                : :                           : :
" : .',   .--.  ,-.,-. .-', : .--. ,-.,-.,-. .--.  .--. : `-.  .--. ,-.,-.,-. .--.
" : :.`.', .; ; : ,. :', .; :', .; :: ,. ,. :`._-.'',  ..': .. :', '_.': ,. ,. :', '_.'
" :_;:_;`.__,_;:_;:_;`.__.'`.__.':_;:_;:_;`.__.'`.__.':_;:_;`.__.':_;:_;:_;`.__.'


set background=dark

function RandomColorSchemeMyPicks()
  let mypicks = [
        \ 'dracula', 'nordfox', 'duskfox', 'carbonfox',
        \ 'afterglow', 'afterglow'            
        \, 'carbonfox'
        \, 'catppuccin_frappe'    
        \, 'catppuccin_macchiato' 
        \, 'catppuccin_mocha'     
        \, 'desert'               
        \, 'dracula'              
        \, 'duskfox'
        \, 'elflord'
        \, 'gotham'
        \, 'challenger_deep'
        \, 'one'
        \, 'jellybeans'
        \, 'gruvbox8'
        \, 'gruvbox8_hard'        
        \, 'gruvbox8_soft'
        \, 'habamax'              
        \, 'kalisi'
        \, 'koehler'
        \, 'nordfox'              
        \, 'pablo'
        \, 'slate'
        \, 'solarized8'
        \, 'solarized8_flat'
        \, 'solarized8_high'
        \, 'solarized8_low'
        \, 'sorbet'
        \, 'terafox'
        \, 'torte'          
        \, 'wildcharm'
        \, 'zaibatsu'       
  \]
  let mypick = mypicks[localtime() % len(mypicks)]
  " echom mypick
  execute 'colorscheme '. mypick
  " hi NonText guifg=bg
  " hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

command NewColor call RandomColorSchemeMyPicks()

nnoremap <Leader>da :NewColor<CR>
nnoremap <Leader>br :colorscheme fogbell_light<CR>

let s:use_gui = exists('g:neovide') || has('gui_running') || (has('termguicolors') && &termguicolors)
if (s:use_gui)
  call RandomColorSchemeMyPicks()
endif

" cosas que no deberían de ponerse

" hi NonText guifg=bg

" hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

" function FixHiglightline()
"   hi CursorLine term=bold cterm=bold guibg=Grey40
" endfunction

" command FixLine call FixHiglightline()

" nnoremap <Leader>hi :FixLine<CR>

