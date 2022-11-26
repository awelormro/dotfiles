" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
 
  " Syntax alignenment
  Plug 'dense-analysis/ale'
  Plug 'vim-scripts/DrawIt'
  Plug 'vim-scripts/loremipsum'
  " vim-plug
  Plug 'vim-scripts/todolist.vim'
  " Plug 'chriskempson/base16-vim'
  Plug 'luochen1990/rainbow'
  Plug 'tinted-theming/base16-vim'
  Plug 'dominickng/fzf-session.vim'
  let g:rainbow_active = 1 
  Plug 'vimwiki/vimwiki'
  Plug 'dpelle/vim-LanguageTool'
  " set to 0 if you want to enable it later via
  " :RainbowToggle""
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'junegunn/vim-easy-align'
  Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'oxalica/nightfox.vim'
  Plug 'antoinemadec/coc-fzf'
  Plug 'preservim/vim-markdown'
  " Plug 'EdenEast/nightfox.nvim'
  Plug 'jaredgorski/fogbell.vim'
  " Indicates info about keymaps
  Plug 'liuchengxu/vim-which-key'
  Plug 'chrisbra/csv.vim'
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
 
  Plug 'easymotion/vim-easymotion'
  " Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'vim-pandoc/vim-rmarkdown'
  let g:vim_pandoc_syntax_exists=0
  "  Snippets are separated from the engine. Add this if you want them:
  Plug 'honza/vim-snippets'
 
  Plug 'sotte/presenting.vim'

call plug#end()
set encoding=UTF-8
" }}}

