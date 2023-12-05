" vim: set fdm=marker:
"  ____  _             _   _  __
" / ___|| |_ __ _ _ __| |_(_)/ _|_   _
" \___ \| __/ _` | '__| __| | |_| | | |
"  ___) | || (_| | |  | |_| |  _| |_| |
" |____/ \__\__,_|_|   \__|_|_|  \__, |
"                                |___/
" 󰹯 Startify settings {{{1
" 󰏘 Ascii glyph pallette {{{2
" Dollar signs {{{3
  " \'   ______   __                             __               ',
  " \'  /      \ |  \                           |  \              ',
  " \' |  $$$$$$\| $$____   __    __  __     __  \$$ ______ ____  ',
  " \' | $$__| $$| $$    \ |  \  |  \|  \   /  \|  \|      \    \ ',
  " \' | $$    $$| $$$$$$$\| $$  | $$ \$$\ /  $$| $$| $$$$$$\$$$$\',
  " \' | $$$$$$$$| $$  | $$| $$  | $$  \$$\  $$ | $$| $$ | $$ | $$',
  " \' | $$  | $$| $$__/ $$| $$__/ $$   \$$ $$  | $$| $$ | $$ | $$',
  " \' | $$  | $$| $$    $$ \$$    $$    \$$$   | $$| $$ | $$ | $$',
  " \'  \$$   \$$ \$$$$$$$   \$$$$$$      \$     \$$ \$$  \$$  \$$',


"  Generate Ascii art {{{2
let g:ascii=[
  \'      >>       >=>               >=>         >=>                  ',
  \'     >>=>      >=>                >=>       >=>   >>              ',
  \'    >> >=>     >=>      >=>  >=>   >=>     >=>       >===>>=>>==> ',
  \'   >=>  >=>    >=>>==>  >=>  >=>    >=>   >=>    >=>  >=>  >>  >=>',
  \'  >=====>>=>   >=>  >=> >=>  >=>     >=> >=>     >=>  >=>  >>  >=>',
  \' >=>      >=>  >=>  >=> >=>  >=>      >===>      >=>  >=>  >>  >=>',
  \'>=>        >=> >=>>==>    >==>=>       >=>       >=> >==>  >>  >=>',
  \ ]


"   Modify startify header and centering {{{2
" Add fortunebox to the ascii art

" \ { 'type': 'bookmarks', 'header': startify#center(['    Bookmarks']) },
" let g:startify_custom_header = startify#center( g:ascii + startify#fortune#boxed()  )
let g:startify_custom_header = startify#center( g:ascii )

let g:startify_fortune_use_unicode = 1
let g:startify_lists = [
    \ { 'type': 'commands',  'header': startify#center(['   Menu   ']) },
    \ ]
let g:startify_padding_left= &columns/4

" 󰕅  Modify startify menus {{{2
" Show aviable startify commands
let g:startify_commands = [
    \ {'fo': ['   Check reciently opened files', 'History']},
    \ {'fi': ['   Open important files', 'ImportantFiles']},
    \ {'fm': ['󱥭   Show sessions','Sessions']},
    \ {'fb': ['   Show bookmarks','Marks']},
    \ {'ww': ['   Open Wiki Index','e ~/abuwiki/Orgtests/main.org' ] },
    \ {'fs': ['󱏔   File manager','NERDTree']},
    \ {'fk': ['   Show keymaps', 'Maps']},
    \ {'ft': ['󰉦   Change colorscheme','Colors'] },
    \ ]

"  Show file bookmarks, session directories {{{2
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, {'zh':'~/.zshrc'}, {'i3':'~/.config/i3/config'},{'kt':'~/.config/kitty/kitty.conf'},{'xr':'~/.Xresources'},{'tm':'~/.tmux.conf'}, {'al':'~/.config/alacritty/alacritty.yml'}]

" let g:startify_enable_special = 0

let g:startify_session_dir = '/home/abu/Plantillas/session'

" 󰜺 Avoid use of indentline in Startify {{{2

let g:indentLine_fileTypeExclude = ['startify']

