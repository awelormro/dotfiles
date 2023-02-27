
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


Plug 'dpelle/vim-LanguageTool'
Plug 'vim-scripts/SyntaxRange'
Plug 'dense-analysis/ale'
let g:ale_sign_error = '☣'
let g:ale_sign_warning = '⚠'
Plug 'jaredgorski/fogbell.vim'

" Jedi completion for python
Plug 'davidhalter/jedi-vim'

" Personal wiki file
Plug 'vimwiki/vimwiki', {'branch':'dev'}
Plug 'tools-life/taskwiki'
Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'

" Tags management 
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'

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
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'


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
" Plug '~/Plantillas/Toggle-settings.vim'
" Plug '~/Plantillas/Todo-highlight.vim'

" Close pairs
Plug 'Raimondi/delimitMate'

" Fix cursorline performance
Plug 'delphinus/vim-auto-cursorline'

" Colorschemes

Plug 'tinted-theming/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim'
Plug 'flazz/vim-colorschemes'

" Colorize CSS colors 
Plug 'ap/vim-css-color'

" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Misc Configs
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'Konfekt/FastFold'
Plug 'pakutoma/toggle-terminal'

" Comment sections
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'


" Latex file edition
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']

" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'

" Syntax highlighters

Plug 'mboughaba/i3config.vim'
Plug 'farfanoide/vim-kivy'
" Pandoc and RMarkdown syntax
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
" Markdown syntax plugin
Plug 'tpope/vim-markdown'
" Vimscript filetype syntax
Plug 'machakann/vim-Verdin'

Plug 'chrisbra/csv.vim'
Plug 'sambazley/vim-csveval'
Plug 'azabiong/vim-highlighter'


Plug 'LeafCage/flashcards.vim'
Plug 'archernar/vim-flashcard'
Plug 'EdwinWenink/vim-quiz'
Plug 'guyon/quiz-vim'


" Chatgpt usage
Plug '0xStabby/chatgpt-vim'
Plug 'mattn/vim-chatgpt'

" Sync vim with the pdf reader Evince
Plug 'peterbjorgensen/sved'

" File manager created and its plugins
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'

call plug#end()



