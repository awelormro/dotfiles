
" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  " vim-plug
  Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1 
  " set to 0 if you want to enable it later via
  " :RainbowToggle""
  Plug 'liuchengxu/vim-which-key'
  Plug 'lervag/vimtex'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mhinz/vim-startify'
  Plug 'vwxyutarooo/nerdtree-devicons-syntax'
  Plug 'ap/vim-buftabline'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdcommenter'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'
  " Plug 'vim-scripts/ClosePairs'
  " Track the engine.
  "
  " " Snippets are separated from the engine. Add this if you want them:
  Plug 'honza/vim-snippets'
 

call plug#end()
set encoding=UTF-8
" }}}

