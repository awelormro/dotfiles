
" .---.                 .-.                           .-.
" : .; :                : :                           : :
" : .',   .--.  ,-.,-. .-', : .--. ,-.,-.,-. .--.  .--. : `-.  .--. ,-.,-.,-. .--.
" : :.`.', .; ; : ,. :', .; :', .; :: ,. ,. :`._-.'',  ..': .. :', '_.': ,. ,. :', '_.'
" :_;:_;`.__,_;:_;:_;`.__.'`.__.':_;:_;:_;`.__.'`.__.':_;:_;`.__.':_;:_;:_;`.__.'




function RandomColorSchemeMyPicks()
  let mypicks = [
    \ 'nightfox','nordfox',
    \ 'dracula',
    \ '0x7A69_dark',
    \ 'caramel',
    \ 'frozen',
    \ 'mod_tcsoft',
    \ 'silent',
    \ '1989',
    \ 'carbonfox',
    \ 'fruidle',
    \ 'simple256',
    \ '256-grayvim',
    \ 'carrot',
    \ 'fruit',
    \ 'mojave',
    \ 'simple_b',
    \ '256-jungle',
    \ 'carvedwood',
    \ 'fruity',
    \ 'molokai',
    \ 'simple_dark',
    \ '256_noir',
    \ 'carvedwoodcool',
    \ 'fu',
    \ 'molokai_dark',
    \ 'simpleandfriendly',
    \ '3dglasses', 'cascadia',
    \ 'fx',
    \ 'monoacc',
    \ 'simplewhite',
    \ 'Atelier_CaveDark',
    \ 'celtics_away',
    \ 'garden',
    \ 'mochrome',
    \ 'simplon',
    \ 'Atelier_CaveLight',
    \ 'cgpro',
    \ 'gardener',
    \ 'monokai',
    \ 'skittles_autumn',
    \ 'Atelier_DuneDark',     
    \ 'chalkboard',       
    \ 'gemcolors',      
    \ 'monokai-chris',      
    \ 'skittles_berry',
    \ 'Atelier_DuneLight',
    \ 'chance-of-storm',    
    \ 'genericdc',      
    \ 'monokai-phoenix',    
    \ 'skittles_dark',
    \ 'Atelier_EstuaryDark',    
    \ 'charged-256',      
    \ 'genericdc-light',    
    \ 'monokain',       
    \ 'sky',
    \ 'Atelier_EstuaryLight',
    \ 'charon',       
    \ 'gentooish',      
    \ 'montz',        
    \ 'slate',
    \ 'Atelier_ForestDark',   
    \ 'chela_light',      
    \ 'getafe',       
    \ 'moody',        
    \ 'slate2',
    \ 'Atelier_ForestLight',    
    \ 'cherryblossom',      
    \ 'getfresh',       
    \ 'moonshine',      
    \ 'smarties',
    \ 'Atelier_HeathDark',    
    \ 'chlordane',      
    \ 'ghostbuster',      
    \ 'moonshine_lowcontrast',  
    \ 'smp',
    \ 'Atelier_HeathLight',   
    \ 'github', 
    \ 'moonshine_minimal', 
    \ 'smpl',
    \ 'Atelier_LakesideDark',   'chroma',       'gobo',         'mophiaDark',       'smyck',
    \ 'Atelier_LakesideLight',  'chrysoprase',      'golded',       'mophiaSmoke',      'soda',
    \ 'Atelier_PlateauDark',    'clarity',        'golden',       'mopkai',       'softblue',
    \ 'Atelier_PlateauLight',   'cleanphp',       'goldenrod',      'more',         'softbluev2',
    \ 'Atelier_SavannaDark',
    \ 'cleanroom',      
    \ 'goodwolf',
    \ 'softlight',
    \ 'Atelier_SavannaLight',
    \ 'clearance',      
    \ 'google',       
    \ 'moriarty',       
    \ 'Atelier_SeasideDark',    
    \ 'morning',       
    \ 'Atelier_SeasideLight',   'clue',         'gotham',       'moss',        
    \ 'Atelier_SulphurpoolDark',  'cobalt',       'gotham256',      'motus',       
    \ 'cobalt2',        'gothic',       'mourning',       'solarized8_dark',
    \ 'Benokai',        'cobaltish',      'grape',        'mrkn256',        'solarized8_dark_flat',
    \ 'Black',        'coda',         'gravity',        'mrpink',       'solarized8_dark_high',
    \ 'fogbell'
  \]

  let mypick = mypicks[localtime() % len(mypicks)]
  echom mypick
  execute 'colorscheme '. mypick
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
