"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
"

source $HOME/.vimconfigs/plugs.vim
source $HOME/.vimconfigs/globals.vim
source $HOME/.vimconfigs/lookandfeel.vim
source $HOME/.vimconfigs/airlineconfs.vim
source $HOME/.vimconfigs/color.vim
source $HOME/.vimconfigs/files.vim
" source $HOME/.vimconfigs/coconfs.vim
" source $HOME/.vimconfigs/completion.vim
source $HOME/.vimconfigs/mucomp.vim
source $HOME/.vimconfigs/mappings.vim
source $HOME/.vimconfigs/commands.vim
source $HOME/.vimconfigs/cheatsheetconfs.vim
source $HOME/.vimconfigs/lineconfs.vim
source $HOME/.vimconfigs/exploreconfs.vim
source $HOME/.vimconfigs/startify.vim
" source $HOME/.vimconfigs/orgmodeconfs.vim
" source $HOME/.vimconfigs/zetteladdons.vim
source $HOME/.vimconfigs/tabsconfs.vim
source $HOME/.vimconfigs/importantfiles.vim
source $HOME/.vimconfigs/texconfigs.vim

let g:orgmode_journal_path='~/Abuwiki/Diary/'

filetype plugin on
set cursorline
set scrolloff=999
set timeoutlen=500

" let g:vimtex_matchparen_enabled = 0
" let g:vimtex_syntax_enabled=0
set ttimeoutlen=0
" let g:acp_behaviorSnipmateLength=1
autocmd BufRead,BufNewFile *.rmd setlocal filetype=pandoc
let g:vimtex_syntax_enabled=1
" let g:tex_conceal=""
filetype plugin indent on
let g:indentLine_fileTypeExclude = ['tex','org','startify']
" let g:vimtex_syntax_nested=0
" set re=1
set lazyredraw
let g:vimtex_matchparen_enabled = 0
let loaded_matchparen = 1
set conceallevel=2
set regexpengine=1
" autocmd BufRead,BufNewFile *.org setlocal foldmethod=expr
