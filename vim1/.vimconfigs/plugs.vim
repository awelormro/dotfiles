" vim: set fdm=marker:
"
"     ██████╗ ██╗     ██╗   ██╗ ██████╗ ███████╗
"     ██╔══██╗██║     ██║   ██║██╔════╝ ██╔════╝
"     ██████╔╝██║     ██║   ██║██║  ███╗███████╗
"     ██╔═══╝ ██║     ██║   ██║██║   ██║╚════██║
"     ██║     ███████╗╚██████╔╝╚██████╔╝███████║
"     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝
"
" Start vim-plug addon
call plug#begin() 
  

" Completion, correction and creation {{{1
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-mucomplete'
let g:abuftabline_show=2
let g:abuftabline_separators=1
let g:abuftabline_separators_char= ''
let g:abuftabline_numbers=2
Plug 'dpelle/vim-LanguageTool'
Plug 'vim-scripts/SyntaxRange'
Plug 'dense-analysis/ale'
let g:ale_sign_error = '☣'
let g:ale_sign_warning = '⚠'

" Lorem ipsum script 
Plug 'vim-scripts/loremipsum'
" Snippet interaction
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
" Jedi completion for python
Plug 'davidhalter/jedi-vim'
" Emmet integration for vim
Plug 'mattn/emmet-vim'


" Tab build and forked {{{1
" Plug '~/Plantillas/abuftabline'
Plug 'icalvin102/svelte-nerdfonts', { 'rtp': 'vim' }

" Personal wiki file
" Plug 'vimwiki/vimwiki', {'branch':'dev'}
" Plug 'tools-life/taskwiki'
" Plug 'vimwiki/vimwiki'
" Plug 'tools-life/taskwiki'

" Tags management {{{1
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'
" }}}
" Performance, look and feel plugins {{{1
" Resize for windows when multiple splits are opened
Plug 'liuchengxu/vim-which-key'
Plug 'camspiers/lens.vim'
" Rainbow brackets
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'
" Statusline and Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Fix cursorline performance
" Plug 'delphinus/vim-auto-cursorline'
" Icons support
Plug 'ryanoasis/vim-devicons'
" Github Interaction
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Splashscreen for vim
Plug 'mhinz/vim-startify', {'branch':'center'}
" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Comment sections
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'


" Support for table and align management
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/vim-easy-align'
" ASCII diagrams creations
Plug 'vim-scripts/DrawIt'

" Create a minimap for the file with Rust 
" Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}



" Orgmode attempt config {{{1
" Plug '~/Plantillas/vim-abuorgmode'
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'suliveevil/utl.vim'
Plug 'inkarkat/vim-SyntaxRange'
" }}}
" FZF integration {{{1
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'



" Homemade Plugins
Plug '~/Plantillas/Toggle-settings.vim'
Plug '~/Plantillas/Todo-highlight.vim'

" Close pairs
Plug 'Raimondi/delimitMate'



" Colorschemes {{{1
" Check colorschemes 
Plug 'vim-scripts/ScrollColors'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim'
" Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sickill/vim-monokai'
Plug 'cocopon/iceberg.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'mhartington/oceanic-next'
Plug 'junegunn/seoul256.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/space-vim-dark'
Plug 'folke/tokyonight.nvim'
Plug 'haishanh/night-owl.vim'
Plug 'sainnhe/edge'
Plug 'ayu-theme/ayu-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'blueshirts/darcula'
Plug 'w0ng/vim-hybrid'
Plug 'jacoborus/tender.vim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'
Plug 'cocopon/iceberg.vim'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jaredgorski/fogbell.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Misc Configs {{{1
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'kalekundert/vim-coiled-snake'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'pakutoma/toggle-terminal'
" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'
" Colorize CSS colors 
Plug 'ap/vim-css-color'
" Bullet journal home made
Plug '~/Plantillas/bujovim'
Plug '~/Plantillas/orgsyntax'

" Syntax highlighters {{{1

Plug 'mboughaba/i3config.vim'
Plug 'farfanoide/vim-kivy'
" Pandoc and RMarkdown syntax
Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
" Markdown syntax plugin
Plug 'tpope/vim-markdown'
" Vimscript filetype syntax
Plug 'machakann/vim-Verdin'
" Clojure support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'chrisbra/csv.vim'
Plug 'sambazley/vim-csveval'
Plug 'azabiong/vim-highlighter'
Plug 'LeafCage/flashcards.vim'
Plug 'archernar/vim-flashcard'
Plug 'EdwinWenink/vim-quiz'
Plug 'guyon/quiz-vim'

" Latex file edition {{{2
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']
" Sync vim with the pdf reader Evince
Plug 'peterbjorgensen/sved'
" }}}
" Homemade plugins {{{1
Plug '~/Plantillas/zettelvim'
Plug '~/Plantillas/pythonpluginexample'
" }}}

" Pomodoro timer {{{1
Plug 'pakutoma/toggle-terminal'
Plug 'adelarsq/vim-pomodoro'
" Duration of a pomodoro in minutes (default: 25)
let g:pomodoro_time_work = 25

" Duration of a break in minutes (default: 5)
let g:pomodoro_time_slack = 5

" Log completed pomodoros, 0 = False, 1 = True (default: 0)
let g:pomodoro_do_log = 0

" Path to the pomodoro log file (default: /tmp/pomodoro.log)
let g:pomodoro_log_file = "/tmp/pomodoro.log"
" File manager created and its plugins {{{1
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'andykog/fern-highlight.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'andymass/vim-matchup'
let g:fern#renderer = "nerdfont"
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
" }}}

call plug#end()

