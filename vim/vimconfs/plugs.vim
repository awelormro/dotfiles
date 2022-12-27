" PLUGINS ---------------------------------------------------------------- {{{
" FIXME 
" BUG 
call plug#begin('~/.vim/plugged')
 
  " Syntax alignment
Plug '~/Plantillas/Toggle-settings.vim'
Plug '~/Plantillas/Todo-highlight.vim'
Plug 'Raimondi/delimitMate'
Plug 'dkarter/bullets.vim'
" Plug 'Townk/vim-autoclose'
Plug '~/Plantillas/Todo-search.vim'
Plug 'dense-analysis/ale'
" Plug 'glepnir/dashboard-nvim'
Plug 'camspiers/lens.vim'
" Plug 'sstallion/vim-cursorline'
Plug 'delphinus/vim-auto-cursorline'
" Plug 'lervag/wiki-ft.vim'
Plug 'kalekundert/vim-coiled-snake'
Plug 'vim-test/vim-test'
Plug 'rafaqz/ranger.vim'
Plug 'rhysd/vim-healthcheck'
Plug 'tpope/vim-fugitive'
" Plug 'ntpeters/vim-airline-colornum'
Plug 'sjn/vim-plugin-AnsiEsc'
Plug 'ashisha/image.vim'
Plug 'vim-scripts/DrawIt'
Plug 'matze/vim-tex-fold'
Plug 'vim-scripts/loremipsum'
Plug 'ap/vim-css-color'
Plug 'preservim/tagbar'
Plug 'chaoren/vim-imageview'
" Plug 'kvngvikram/rightclick-macros'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-scripts/todolist.vim'
Plug 'luochen1990/rainbow'
Plug 'tinted-theming/base16-vim'
Plug 'dominickng/fzf-session.vim'
" Plug 'lervag/vim-rainbow-lists'
" Plug 'lervag/lists.vim'
let g:rainbow_active = 1 
" Plug 'lervag/wiki.vim'
Plug 'vimwiki/vimwiki', {'branch': 'dev'}

Plug 'machakann/vim-Verdin'
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
let g:vim_markdown_folding_style_pythonic = 1
Plug 'Konfekt/FastFold'
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
" Plug 'preservim/nerdtree'

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
" Plug 'ap/vim-buftabline'
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

" Presenting tool for console presentations

Plug 'sotte/presenting.vim'

" cmus remote control

Plug 'azadkuh/vim-cmus'

" File manager created and its plugins
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'

call plug#end()
set encoding=UTF-8
" }}}

