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

"  Setting the correct functions{{{1
" 󰂺 Completion is listed as follows: {{{2
" 1: mucomplete
" 2: coc.nvim
" 3: YouCompleteme
" 4: Custom completion file
" }}}
let completion=1
" 󰠰 Status bar will be listed as follows: {{{2
" 1: vim-airline
" 2: vim-lightline
" 3: Custom status bar
" }}}
let statusbar=2
"   Snippet engine will be listed as follows: {{{2
" 1: Ultisnips
" 2: Snipmate
" 3: Vsnip
" }}}
let snippets=1
"  Vim File explorer: {{{2
" 1: Fern.vim
" 2: Nerdtree
" }}}
let vimfilexplorer=1
" cosas }}}

call plug#begin()
"  Start plug call {{{1
" 󰙪 Plugins for completion {{{2
if completion==1
  Plug 'lifepillar/vim-mucomplete'
  Plug 'dense-analysis/ale'
" source ~/.vimconf/mucompleteconf.vim
elseif completion==2
  let snippets=44
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'honza/vim-snippets'
" source ~/.vimconf/coconfig.vim
" Plug 'dense-analysis/ale'
elseif completion==3
  Plug 'dense-analysis/ale'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  " source ~/.vimconf/ycmconfig.vim
endif
"   Plugins for snippets{{{2
if snippets==1
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
elseif snippets==2
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
elseif snippets==3
  Plug 'hrsh7th/vim-vsnip'| Plug 'honza/vim-snippets'
  Plug 'hrsh7th/vim-vsnip-integ'
endif
" {{{2 󰛨 ale settings management

" Configuración para ALE con archivos Vimscript
let g:ale_linters = {
      \ 'vim': ['vimls'],
      \ 'tex': ['chktex', 'latexindent'],
      \ 'css': ['stylelint']
      \ }
let g:ale_tex_chktex_options='-I -n 44 -n 24'
" }}}
" 󱖫 Statusline and Tabline {{{2
" Icons support
Plug 'ryanoasis/vim-devicons'
if statusbar==1
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
" source ~/.vimconf/plugairline.vim
elseif statusbar==2
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'
elseif statusbar==3
  " source ~/.vimconf/statuscustom.vim
endif
" Plug 'bagrat/vim-buffet'
" 󰧮 Syntax files plugins {{{2
Plug 'chrisbra/unicode.vim'
Plug 'davidhalter/jedi-vim', {'for':'python'}
Plug 'othree/html5.vim'
"  Plugins to navigate and control settings {{{2
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'andymass/vim-matchup'
Plug 'liuchengxu/vim-which-key'
" By default timeoutlen is 1000 ms
set timeoutlen=500
" nnoremap <silent> ´ :WhichKey '´'<CR>
Plug 'camspiers/lens.vim'
Plug 'andymass/vim-matchup'
Plug 'tpope/vim-fugitive'
Plug 'LunarWatcher/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'kvngvikram/rightclick-macros'
" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'
" Rainbow brackets
Plug 'matze/vim-move'
let g:move_key_modifier = 'S'
let g:move_key_modifier_visualmode = 'S'
Plug 'airblade/vim-gitgutter'
" 󰸌 Plugs for eyecandy {{{2
Plug 'luochen1990/rainbow'
Plug 'lambdalisue/glyph-palette.vim'
let g:rainbow_active = 0
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
" }}}
"  Tags management {{{2
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'
" }}}
"  fzf integrations in vim {{{2
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug '~/Plantillas/fzf-vim-nerdpicker'
" }}}
" 󰠰 Plugs for get better interaction with vim {{{2
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
Plug 'tpope/vim-abolish'
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
"  Bullet journal home made {{{2
" Plug '~/Plantillas/bujovim'
" Plug '~/Plantillas/orgsyntax'
" }}}
" 󰙅 File type plugins {{{2
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
" 󰂽 Plugins for note taking {{{2
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-scripts/DrawIt'
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
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-SyntaxRange'
Plug 'vimwiki/vimwiki'
" Plug 'hsitz/VimOrganizer'
" Plug 'vim-scripts/Tagbar'
Plug '~/Plantillas/vim-abuorgmode'
"  File manager created and its plugins {{{2
if vimfilexplorer==1
  Plug 'lambdalisue/fern.vim'
  Plug 'lambdalisue/fern-git-status.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/fern-hijack.vim'
  Plug 'andykog/fern-highlight.vim'
  Plug 'yuki-yano/fern-preview.vim'
elseif vimfilexplorer==2
  Plug 'preservim/nerdtree'
endif
" }}}

" }}}
call plug#end()
filetype plugin on 
filetype indent on
