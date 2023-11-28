
" vim: set fdm=marker:
"
" '########::'##:::::::'##::::'##::'######::::'######::
"  ##.... ##: ##::::::: ##:::: ##:'##... ##::'##... ##:
"  ##:::: ##: ##::::::: ##:::: ##: ##:::..::: ##:::..::
"  ########:: ##::::::: ##:::: ##: ##::'####:. ######::
"  ##.....::: ##::::::: ##:::: ##: ##::: ##:::..... ##:
"  ##:::::::: ##::::::: ##:::: ##: ##::: ##::'##::: ##:
"  ##:::::::: ########:. #######::. ######:::. ######::
" ..:::::::::........:::.......::::......:::::......:::


" Call for plugins {{{1
call plug#begin()
" Plugins for completion {{{2
" Plug 'vim-scripts/AutoComplPop'
" Plug 'ervandew/supertab'
" Plug 'Raimondi/delimitMate'
" autocmd filetype org let b:apc_trigger='\<C-n>'
Plug 'lifepillar/vim-mucomplete'
Plug 'dense-analysis/ale'
" {{{3 ale settings management

" Configuración para ALE con archivos Vimscript
let g:ale_linters = {
  \ 'vim': ['vimls'],
  \ 'tex': ['chktex', 'latexindent'],
  \ }

let g:ale_vim_vint_options = '--version' " Opciones adicionales para vint
" }}}
let g:mucomplete#enable_auto_at_startup=1
" Syntax files plugins {{{2
" Plug 'chrisbra/unicode.vim'
Plug 'davidhalter/jedi-vim', {'for':'python'}
Plug 'othree/html5.vim'
" Plugins to navigate and control settings {{{2
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'preservim/nerdtree'
Plug 'andymass/vim-matchup'
Plug 'matze/vim-move'
let g:move_key_modifier = 'S'
let g:move_key_modifier_visualmode = 'S'
Plug 'airblade/vim-gitgutter'
" Plugs for eyecandy {{{2

Plug 'liuchengxu/vim-which-key'
Plug 'camspiers/lens.vim'
" Rainbow brackets
Plug 'luochen1990/rainbow'
let g:rainbow_active = 0
" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'
" Colorscheme visual selector
Plug 'aarondl/colorscroll'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'freeo/vim-kalisi'
Plug 'whatyouhide/vim-gotham'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'rakr/vim-one'
Plug 'nanotech/jellybeans.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'danilo-augusto/vim-afterglow'
Plug 'lifepillar/vim-solarized8'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'EdenEast/nightfox.nvim'
" Statusline and Tabline {{{2
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Icons support
Plug 'ryanoasis/vim-devicons'
" Plug 'bagrat/vim-buffet'
" }}}
" Tags management {{{2
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'
" }}}
" fzf integrations in vim {{{2
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'
" }}}
" Plugs for get better interaction with vim {{{2
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
" Plug 'skammer/vim-css-color'
" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'
" Splashscreen for vim
Plug 'mhinz/vim-startify', {'branch':'center'}
" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" }}}
" Bullet journal home made {{{2
" Plug '~/Plantillas/bujovim'
" Plug '~/Plantillas/orgsyntax'
" }}}
" File type plugins {{{2
Plug 'mboughaba/i3config.vim'
Plug 'farfanoide/vim-kivy'
" Pandoc and RMarkdown syntax
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
" Markdown syntax plugin
Plug 'tpope/vim-markdown'
" Vimscript filetype syntax
Plug 'machakann/vim-Verdin', { 'for': 'vim'}
" let g:Verdin#cooperativemode = 1
" Clojure support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'chrisbra/csv.vim'
Plug 'sambazley/vim-csveval'
Plug 'azabiong/vim-highlighter'
" Plugins for note taking {{{2

Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']
" Sync vim with the pdf reader Evince
Plug 'peterbjorgensen/sved'
" Plug '~/.dotfiles/orgsyntax'
" Plug 'lervag/lists.vim'
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'suliveevil/utl.vim'
Plug 'inkarkat/vim-SyntaxRange'
" Plug 'hsitz/VimOrganizer'
" Plug 'vim-scripts/Tagbar'
Plug '~/Plantillas/vim-abuorgmode'
" File manager created and its plugins {{{2
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'andykog/fern-highlight.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'andymass/vim-matchup'
" 
" }}}
call plug#end()
filetype plugin on 
filetype indent on
