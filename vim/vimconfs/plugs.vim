" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
 
  " Syntax alignenment
  Plug 'dense-analysis/ale'
  " vim-plug
  " Plug 'chriskempson/base16-vim'
  Plug 'luochen1990/rainbow'
  Plug 'tinted-theming/base16-vim'
  let g:rainbow_active = 1 
  " set to 0 if you want to enable it later via
  " :RainbowToggle""
 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'oxalica/nightfox.vim'
  " Plug 'EdenEast/nightfox.nvim'
  Plug 'jaredgorski/fogbell.vim'
  " Indicates info about keymaps
  Plug 'liuchengxu/vim-which-key'
 
  " Latex suport
  Plug 'lervag/vimtex'

  " Autocompletion settings
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Colorschemes section:
  Plug 'dracula/vim', { 'as': 'dracula' }
  
  " File explorer
  Plug 'preservim/nerdtree'

  " Airline config
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Icons for vim
  Plug 'ryanoasis/vim-devicons'
  Plug 'vwxyutarooo/nerdtree-devicons-syntax'

  " Vim splashscreen
  Plug 'mhinz/vim-startify', {'branch': 'center'}"
  " Plug 'mhinz/vim-startify'

  " Tabs list for vim
  Plug 'ap/vim-buftabline'
  " Plug 'mg979/vim-xtabline'

  " Misc Configs
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdcommenter'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-commentary'

  " Configs for focusing
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  " Plug 'vim-scripts/ClosePairs'
  " Track the engine.
 
  Plug 'vim-pandoc/vim-rmarkdown'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  "  Snippets are separated from the engine. Add this if you want them:
  Plug 'honza/vim-snippets'
 

call plug#end()
set encoding=UTF-8
" }}}

