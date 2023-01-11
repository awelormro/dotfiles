
"     ██████╗ ██╗     ██╗   ██╗ ██████╗ ███████╗
"     ██╔══██╗██║     ██║   ██║██╔════╝ ██╔════╝
"     ██████╔╝██║     ██║   ██║██║  ███╗███████╗
"     ██╔═══╝ ██║     ██║   ██║██║   ██║╚════██║
"     ██║     ███████╗╚██████╔╝╚██████╔╝███████║
"     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝
"
" Start vim-plug addon
call plug#begin() 
" Completion plugin
Plug 'lifepillar/vim-mucomplete'
" Prereqs:
" Plug 'jordwalke/AutoComplPop'
    
" Plugin
" Plug 'jordwalke/VimCompleteLikeAModernEditor'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'ervandew/supertab'
" Plug 'vim-scripts/AutoComplPop'
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Context signs
Plug 'wellle/context.vim'

Plug 'dense-analysis/ale'
let g:ale_sign_error = '☣'
let g:ale_sign_warning = '⚠'

" Jedi completion for python
Plug 'davidhalter/jedi-vim'

" Personal wiki file
" Plug 'vimwiki/vimwiki'

" Tags management 
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/Tagbar'
Plug 'vim-scripts/taglist.vim'

" Emmet integration for vim
Plug 'mattn/emmet-vim'

" Splashscreen for vim
Plug 'mhinz/vim-startify', {'branch':'center'}

" Resize for windows when multiple splits are opened
Plug 'camspiers/lens.vim'

" ASCII diagrams creations
Plug 'vim-scripts/DrawIt'

" Rainbow brackets
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 

" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'

" Pandoc and RMarkdown syntax
" Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

" Markdown syntax plugin
Plug 'preservim/vim-markdown'

" Support for table and align management
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/vim-easy-align'

" Create a minimap for the file with Rust 
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Lorem ipsum script 
Plug 'vim-scripts/loremipsum'

" Github Interaction
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Snippet interaction
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'machakann/vim-Verdin'

" NERDTREE if the others fail
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Clojure support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" FZF integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'

" Icons support
Plug 'ryanoasis/vim-devicons'

" Statusline and Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Homemade Plugins
Plug '~/Plantillas/Toggle-settings.vim'
Plug '~/Plantillas/Todo-highlight.vim'

" Close pairs
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'

" Fix cursorline performance
Plug 'delphinus/vim-auto-cursorline'

" Colorschemes

Plug 'tinted-theming/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim'
Plug 'flazz/vim-colorschemes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Colorize CSS colors 
Plug 'ap/vim-css-color'

" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Misc Configs
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'

Plug 'Konfekt/FastFold'

" Latex file edition
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']
Plug 'lervag/wiki.vim'
Plug 'lervag/wiki-ft.vim'
Plug 'lervag/lists.vim'

" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'

" Syntax highlighters
Plug 'mboughaba/i3config.vim'
Plug 'vimer/html5.vim'
Plug 'farfanoide/vim-kivy'
Plug 'itchyny/calendar.vim'

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
