"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"
source $HOME/dotfiles/vim/vimconfs/globals.vim
source $HOME/dotfiles/vim/vimconfs/plugs.vim
source $HOME/dotfiles/vim/vimconfs/bufconfs.vim
source $HOME/dotfiles/vim/vimconfs/coconfigs.vim
source $HOME/dotfiles/vim/vimconfs/keymaps.vim
source $HOME/dotfiles/vim/vimconfs/nerdcomconfs.vim
source $HOME/dotfiles/vim/vimconfs/vimtexconfs.vim
source $HOME/dotfiles/vim/vimconfs/startify.vim
source $HOME/dotfiles/vim/vimconfs/randomschemes.vim
source $HOME/dotfiles/vim/vimconfs/motions.vim
source $HOME/dotfiles/vim/vimconfs/airlineconfs.vim
set redrawtime=300
set cursorline!
" set lazyredraw
autocmd BufRead,BufNewFile *.rmd set filetype=rmarkdown

" hi! Important1 ctermbg=red guibg=red ctermfg=white guifg=white
" match Important1 / FIXME \| BUG \| REPAIR /
" autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|REPAIR\)')
" autocmd Syntax * call matchadd('Important1',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|REPAIR\)')
