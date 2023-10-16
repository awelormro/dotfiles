" vim: set fdm=marker:

" Welcome to my vimrc! todo notes {{{1
"   __     __  ______  __       __  _______    ______
"  /  |   /  |/      |/  \     /  |/       \  /      \
"  $$ |   $$ |$$$$$$/ $$  \   /$$ |$$$$$$$  |/$$$$$$  |
"  $$ |   $$ |  $$ |  $$$  \ /$$$ |$$ |__$$ |$$ |  $$/
"  $$  \ /$$/   $$ |  $$$$  /$$$$ |$$    $$< $$ |
"   $$  /$$/    $$ |  $$ $$ $$/$$ |$$$$$$$  |$$ |   __
"    $$ $$/    _$$ |_ $$ |$$$/ $$ |$$ |  $$ |$$ \__/  |
"     $$$/    / $$   |$$ | $/  $$ |$$ |  $$ |$$    $$/
"      $/     $$$$$$/ $$/      $$/ $$/   $$/  $$$$$$/

" FIXME: Agregar funcionalidades de los íconos
" TODO: Agregar plugins para diccionarios con las nerdfonts
" TODO: Agregar fzf-bibtex
" FIXME: Agregar fzf-emoj

" General Settings {{{1
"
"   ______   __            __                  __
"  /      \ /  |          /  |                /  |
" /$$$$$$  |$$ |  ______  $$ |____    ______  $$ |  _______
" $$ | _$$/ $$ | /      \ $$      \  /      \ $$ | /       |
" $$ |/    |$$ |/$$$$$$  |$$$$$$$  | $$$$$$  |$$ |/$$$$$$$/
" $$ |$$$$ |$$ |$$ |  $$ |$$ |  $$ | /    $$ |$$ |$$      \
" $$ \__$$ |$$ |$$ \__$$ |$$ |__$$ |/$$$$$$$ |$$ | $$$$$$  |
" $$    $$/ $$ |$$    $$/ $$    $$/ $$    $$ |$$ |/     $$/
"  $$$$$$/  $$/  $$$$$$/  $$$$$$$/   $$$$$$$/ $$/ $$$$$$$/

" Appearance settings {{{3
" Colorscheme and syntax settings {{{4
" Backup colorscheme 
colorscheme koehler
" Number and relative number for usage 
set number
set relativenumber
set conceallevel=2
" Syntax and cursor line settings
syntax enable
set cursorline
set nocompatible
set updatetime=200
set ttyscroll=4
syntax sync linebreaks=2
syntax sync ccomment
syntax sync maxlines=400
set t_Co=256
" Set shift width to 4 spaces.
set shiftwidth=2
set termguicolors
" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab
" Wild Menu settings {{{4
" Hide show mode insert label
set noshowmode
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
"set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Wild menu shown as a popup menu
set wildoptions=pum

" Make wildmenu behave like similar to Bash completion.
set wildmode=longest:full,full


" Settings for mouse and Clipboard {{{4
set mouse=a
set mousemodel=popup
set mousehide
set clipboard=unnamedplus

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set termguicolors
if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  else
    set termguicolors
  endif

augroup cursor_behaviour
    autocmd!

    " reset cursor on start:
    autocmd VimEnter * silent !echo -ne "\x1b[\x31 q"
    " cursor blinking bar on insert mode
    let &t_SI = "\x1b[\x35 q"
    " cursor steady block on command mode
    let &t_EI = "\x1b[\x31 q"

    " highlight current line when in insert mode
    autocmd InsertEnter * set cursorline
    " turn off current line highlighting when leaving insert mode
    autocmd InsertLeave * set nocursorline

augroup END

" UTF encoding
set encoding=UTF-8
" Spell settings {{{4
set spell
set spelllang=es,en,pt
let &t_ut='' 
set fillchars+=vert:\┃



" Settings for buffer management {{{3
set hidden

" Mappings {{{3
" Set the comma as the leader key and put ; to invoke command line mode {{{4
let mapleader = " "
let maplocalleader = " "
nnoremap ; :

" Buffer management {{{4

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc>:noh<CR>:echo ''<cr>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
nnoremap <leader>sa :wa!<CR>
nnoremap <Leader>x :bd!<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <Leader>fb :Buffers<CR>
" Plugin mappings {{{4
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>
nnoremap <F2> :TagbarToggle<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>fk :Maps<CR> 
" }}}
" Plugin downloading {{{1

" '########::'##:::::::'##::::'##::'######::::'######::
"  ##.... ##: ##::::::: ##:::: ##:'##... ##::'##... ##:
"  ##:::: ##: ##::::::: ##:::: ##: ##:::..::: ##:::..::
"  ########:: ##::::::: ##:::: ##: ##::'####:. ######::
"  ##.....::: ##::::::: ##:::: ##: ##::: ##:::..... ##:
"  ##:::::::: ##::::::: ##:::: ##: ##::: ##::'##::: ##:
"  ##:::::::: ########:. #######::. ######:::. ######::
" ..:::::::::........:::.......::::......:::::......:::
" Call for plugins {{{3
call plug#begin()
" Plugins for completion {{{4

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'lifepillar/vim-mucomplete'
Plug 'Raimondi/delimitMate'
" Plugins to navigate and control settings {{{4
Plug 'junegunn/vim-easy-align'
" Plugs for eyecandy {{{4

Plug 'liuchengxu/vim-which-key'
Plug 'camspiers/lens.vim'
" Rainbow brackets
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'
" Colorscheme visual selector
Plug 'aarondl/colorscroll'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'freeo/vim-kalisi'
Plug 'lifepillar/vim-gruvbox8'
Plug 'danilo-augusto/vim-afterglow'
Plug 'lifepillar/vim-solarized8'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'EdenEast/nightfox.nvim'
" Statusline and Tabline {{{4
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Icons support
Plug 'ryanoasis/vim-devicons'

" Tags management {{{4
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'
" }}}
" fzf integrations in vim {{{4
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'


" Plugs for get better interaction with vim {{{4
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
Plug 'skammer/vim-css-color'
" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'
" Splashscreen for vim
Plug 'mhinz/vim-startify', {'branch':'center'}
" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Colorize CSS colors 
" Plug 'ap/vim-css-color'
" Bullet journal home made
" Plug '~/Plantillas/bujovim'
" Plug '~/Plantillas/orgsyntax'
let g:cssColorVimDoNotMessMyUpdatetime=1
" File type plugins {{{4
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
" Clojure support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'chrisbra/csv.vim'
Plug 'sambazley/vim-csveval'
Plug 'azabiong/vim-highlighter'

" Plugins for note taking {{{4

Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']
" Sync vim with the pdf reader Evince
Plug 'peterbjorgensen/sved'
Plug '~/dotfiles/orgsyntax'
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'suliveevil/utl.vim'
Plug 'inkarkat/vim-SyntaxRange'
" Plug 'vim-scripts/Tagbar'
" Plug '~/Templates/vim-abuorgmode'
" File manager created and its plugins {{{4
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'andykog/fern-highlight.vim'
Plug 'yuki-yano/fern-preview.vim'
" Plug 'andymass/vim-matchup'
" 
let g:fern#renderer = "nerdfont"
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

let g:nerdfont#path#extension#customs = {
      \ 'tex': '',
      \ 'org': '',
      \}
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
" }}}
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
filetype plugin on 
filetype indent on

" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
" Plugin configurations {{{1
"
" ######
" #     # #      #    #  ####   ####   ####  #    # ######  ####
" #     # #      #    # #    # #    # #    # ##   # #      #
" ######  #      #    # #      #      #    # # #  # #####   ####
" #       #      #    # #  ### #      #    # #  # # #           #
" #       #      #    # #    # #    # #    # #   ## #      #    #
" #       ######  ####   ####   ####   ####  #    # #       ####
"
" Airline settings {{{2

"       >>                    >=>
"      >>=>       >>          >=>  >>
"     >> >=>         >> >==>  >=>     >==>>==>    >==>
"    >=>  >=>    >=>  >=>     >=> >=>  >=>  >=> >>   >=>
"   >=====>>=>   >=>  >=>     >=> >=>  >=>  >=> >>===>>=>
"  >=>      >=>  >=>  >=>     >=> >=>  >=>  >=> >>
" >=>        >=> >=> >==>    >==> >=> >==>  >=>  >====>

let g:airline#extensions#tabline#enabled = 1

" Enable Vim airline powerfonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_type = 2
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#show_close_button = 0

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tex'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''


" Enable show only the first letter of the current mode
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }

" Enables modify airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_stl_path_style = 'short'

au Bufenter *.org  AirlineRefresh
" Lens settings {{{2
"  .
"  /       ___  , __     ____
"  |     .'   ` |'  `.  (
"  |     |----' |    |  `--.
"  /---/ `.___, /    | \___.'
let g:lens#height_resize_min=12
let g:lens#width_resize_min=2

" Mucomplete settings {{{2
"    /$$      /$$
"   | $$$    /$$$
"   | $$$$  /$$$$ /$$   /$$  /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$
"   | $$ $$/$$ $$| $$  | $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$
"   | $$  $$$| $$| $$  | $$| $$      | $$  \ $$| $$ \ $$ \ $$| $$  \ $$
"   | $$\  $ | $$| $$  | $$| $$      | $$  | $$| $$ | $$ | $$| $$  | $$
"   | $$ \/  | $$|  $$$$$$/|  $$$$$$$|  $$$$$$/| $$ | $$ | $$| $$$$$$$/
"   |__/     |__/ \______/  \_______/ \______/ |__/ |__/ |__/| $$____/
"                                                            | $$
"                                                            | $$
"                                                            |__/
"
" 
" Anteponer la manera en que se escribe correctamente pero se puede utilizar
" todo lo anterior 
set updatetime=100
set completeopt-=preview
set completeopt+=noselect
set completeopt+=noinsert,menuone

" set completeopt-=preview
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

let g:mucomplete#auto_complete_timeout = 200
let g:jedi#completions_timeout = 100
let g:jedi#popup_on_dot = 1  " It may be 1 as well

let g:mucomplete#completion_delay = 300


let g:mucomplete#timeout = 200

" When pum is visible & entry selected which is a snippet, expand snippet.
" When pum is visible & entry selected which is not a snippet, only close pum.
" When pum is visible & no entry selected, close pum and insert newline.
" When pum is not visible, insert newline.
function! s:ExpandSnippetOrClosePumOrReturnNewline()
    if pumvisible()
        if !empty(v:completed_item)
            let snippet = UltiSnips#ExpandSnippet()
            if g:ulti_expand_res > 0
                return snippet
            else
                return "\<C-y>"
            endif
        else
            return "\<C-y>"
        endif
    else
        return "\<CR>"
    endif
endfunction


inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrClosePumOrReturnNewline()<CR>
" Define default completion chain
let g:mucomplete#chains = { 
      \'default':
      \ ['ulti','uspl','omni','keyp','keyn','path','dict','line']
      \ }
let g:mucomplete#can_complete = {}
let g:mucomplete#omni_timeout = 500
let g:mucomplete#can_complete.tex = { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
let g:mucomplete#ultisnips#match_at_start = 1  
let g:Verdin#cooperativemode = 1

"  Ultisnips options {{{2
"       _____
"    __|___  |__  ____   _  ____  _____  _____  ______    __   ______
"   |   ___|    ||    \ | ||    ||     ||     ||   ___| _|  |_|   ___|
"    `-.`-.     ||     \| ||    ||    _||    _||   ___||_    _|`-.`-.
"   |______|  __||__/\____||____||___|  |___|  |______|  |__| |______|
"      |_____|
"
" Activate snippet with Enter, navigate with Tab and Shift-tab
let g:UltiSnipsExpandTrigger="<A-CR>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsListSnippets = "<A-Tab>"

" Snippets directory
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]


" Custom snippets path
let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"


" Fern Settings {{{2
"
"     _/_/_/_/
"    _/        _/_/    _/  _/_/  _/_/_/
"   _/_/_/  _/_/_/_/  _/_/      _/    _/
"  _/      _/        _/        _/    _/
" _/        _/_/_/  _/        _/    _/

let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

" Vimtex settings {{{2

"  ____   ____  _                _
" |_  _| |_  _|(_)              / |_
"   \ \   / /  __   _ .--..--. `| |-'.---.  _   __
"    \ \ / /  [  | [ `.-. .-. | | | / /__\\[ \ [  ]
"     \ ' /    | |  | | | | | | | |,| \__., > '  <
"      \_/    [___][___||__||__]\__/ '.__.'[__]`\_]

" Let vimtex to compile using shell-escape mode
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" Vimtex plugin per filetype
filetype plugin indent on
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info) preps.
syntax enable
set concealcursor=nc
" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_viewer = 'sioyek'
" let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_matchparen_enabled=0
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let g:tex_fast=""
" Vimtex syntax conceal config, 1 is enabled, 0 is disabled

let g:vimtex_syntax_conceal = {
      \ 'accents': 1,
      \ 'ligatures': 1,
      \ 'cites': 1,
      \ 'fancy': 1,
      \ 'greek': 1,
      \ 'math_bounds': 1,
      \ 'math_delimiters': 1,
      \ 'math_fracs': 1,
      \ 'math_super_sub': 1,
      \ 'math_symbols': 1,
      \ 'sections': 1,
      \ 'styles': 1,
      \}

let g:tex_fold_additional_envs = ['eqnarray','choices','questions','tabular',] 

let g:vimtex_syntax_custom_cmds = [
      \ {'name': 'longrightarrow', 
      \ 'mathmode': 1, 'concealchar': '→'},
      \ {'name': 'question', 
      \ 'fancy':1,'concealchar': '○ ' },
      \ {'name': 'choice', 'fancy':1,'concealchar': '○' }
      \]

      " \ {'name': 'frac', 'mathmode':1,'concealchar': }
      "
let g:vimtex_syntax_enabled=1
let g:tex_fast=''
let g:indentLine_setConceal=0


" Startify settings {{{2
"  ____  _             _   _  __
" / ___|| |_ __ _ _ __| |_(_)/ _|_   _
" \___ \| __/ _` | '__| __| | |_| | | |
"  ___) | || (_| | |  | |_| |  _| |_| |
" |____/ \__\__,_|_|   \__|_|_|  \__, |
"                                |___/
" Enable custom  ascii art for header.

let g:ascii=[
  \'   ______   __                             __               ',
  \'  /      \ |  \                           |  \              ',
  \' |  $$$$$$\| $$____   __    __  __     __  \$$ ______ ____  ',
  \' | $$__| $$| $$    \ |  \  |  \|  \   /  \|  \|      \    \ ',
  \' | $$    $$| $$$$$$$\| $$  | $$ \$$\ /  $$| $$| $$$$$$\$$$$\',
  \' | $$$$$$$$| $$  | $$| $$  | $$  \$$\  $$ | $$| $$ | $$ | $$',
  \' | $$  | $$| $$__/ $$| $$__/ $$   \$$ $$  | $$| $$ | $$ | $$',
  \' | $$  | $$| $$    $$ \$$    $$    \$$$   | $$| $$ | $$ | $$',
  \'  \$$   \$$ \$$$$$$$   \$$$$$$      \$     \$$ \$$  \$$  \$$',
  \ ]

let g:startify_fortune_use_unicode = 1

" Add fortunebox to the ascii art

" \ { 'type': 'bookmarks', 'header': startify#center(['    Bookmarks']) },
" let g:startify_custom_header = startify#center( g:ascii + startify#fortune#boxed()  )
let g:startify_custom_header = startify#center( g:ascii )

let g:startify_lists = [
    \ { 'type': 'commands',  'header': startify#center(['  󰘳  Menu']) },
    \ ]
let g:startify_padding_left= &columns/4

" Show aviable startify commands
let g:startify_commands = [
    \ {'fo': ['   Check reciently opened files', 'History']},
    \ {'fi': ['   Open important files', 'ImportantFiles']},
    \ {'fm': ['󱥭   Show sessions','Sessions']},
    \ {'ww': ['   Open Wiki Index','e ~/abuwiki/Orgtests/main.org' ] },
    \ {'fs': ['󱏔   File manager','call RangerExplorer()']},
    \ {'fk': ['   Show keymaps', 'Maps']},
    \ {'ft': ['󰉦   Change colorscheme','Colors'] },
    \ ]

" Show file bookmarks 
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, {'zh':'~/.zshrc'}, {'i3':'~/.config/i3/config'},{'kt':'~/.config/kitty/kitty.conf'},{'xr':'~/.Xresources'},{'tm':'~/.tmux.conf'}, {'al':'~/.config/alacritty/alacritty.yml'}]

let g:startify_enable_special = 0

let g:startify_session_dir = '/home/abu/Plantillas/session'

" Avoid use of indentline in Startify

let g:indentLine_fileTypeExclude = ['startify']

" Goyo settings {{{2
"
"         ___               ___   ___
"    .'|=|_.'    .'|=|`.   |   | |   |   .'|=|`.
"  .'  |___    .'  | |  `. `.  |_|  .' .'  | |  `.
"  |   |`._|=. |   | |   |   `.   .'   |   | |   |
"  `.  |  __|| `.  | |  .'    |   |    `.  | |  .'
"    `.|=|_.''   `.|=|.'      |___|      `.|=|.'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:Hexokinase_highlighters = ['background']
" red blue green #0900F9 rgb(13,85,19)o
let g:EasyMotion_do_mapping=1

" Orgmode Settings {{{2
"
"                     __         ___
"    .'|=|`.     .'|=|  |   .'|=|_.'
"  .'  | |  `. .'  | |  | .'  |___
"  |   | |   | |   |=|.'  |   |`._|=.
"  `.  | |  .' |   |  |`. `.  |  __||
"    `.|=|.'   |___|  |_|   `.|=|_.''
"Zettelkasten configs {{{3
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/Abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'
let g:bulletjournalextension='org'
let g:org_indent=1
let g:org_agenda_files = [
      \ '~/Abuwiki/Orgtests/generaltodos.org',
      \ '~/Abuwiki/Orgtests/thesis/todo.org',
      \ ]


function! RestoreOrg()
  autocmd filetype org  unmap <buffer> <Tab>
  autocmd filetype org  unmap <buffer> <S-Tab>
  autocmd filetype org  unmap <buffer> <Leader>sa
  autocmd filetype org  unmap <buffer> <CR>
  autocmd filetype org  nnoremap <buffer> <Leader><CR> :OrgHyperlinkFollow<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
  autocmd FileType org syntax on
  autocmd filetype org setlocal foldmethod=expr
  " autocmd filetype org syntax clear texError
  " autocmd filetype org syntax clear texError
  autocmd filetype org syntax clear org_table
endfunction

" autocmd! BufEnter,BufNew,BufRead,BufNewFile *.org call RestoreOrg()

" Orgmode Ctags Config {{{3
let g:org_linebreaks_auto=0
let g:orgmodectagspyfile='~/.vimconfigs/orgmodetags.py'

let g:tagbar_type_org = {
      \   'ctagstype':'org'
      \ , 'kinds':['h:header']
      \ , 'sro':'&&&'
      \ , 'kind2scope':{'h':'header'}
      \ , 'sort':0
      \ , 'ctagsbin': g:orgmodectagspyfile
      \ , 'ctagsargs': 'default'
\ }

" Orgmode Test Functions {{{3
function! CreateDiarybuffer()
  let s:date = strftime("%Y-%m-%d")
  let s:dir = expand("~/Abuwiki/sort/" . s:date)
  let s:file = s:dir . "/" . s:date . ".org"

  " Verifica si el archivo ya existe y contiene un encabezado
  if filereadable(s:file)
    let s:header = getline(1)
    if s:header == "* " . s:date
      execute "silent! edit " . fnameescape(s:file)
      return
    endif
  endif

  " Crea el directorio si no existe
  if !isdirectory(s:dir)
    call mkdir(s:dir, "p")
  endif

  " Abre el archivo en un nuevo buffer
  execute "silent! edit " . fnameescape(s:file)

  " Añade el encabezado si no existe
  let s:header = getline(1)
  if s:header != "* " . s:date
    call appendbufline(s:file, 0, "* " . s:date) " Añade la fecha como título
    call appendbufline(s:file, 1, "#+TITLE: Diario de " . s:date) " Añade el título del diario
    call appendbufline(s:file, 2, "#+STARTUP: overview") " Establece la vista de inicio como resumen
  endif
endfunction

function! OrgTableSumColumn()
  let sum = 0
  let col = getpos(".")[2]
  let row_start = search("^[ \t]*|", "bnW")
  let [row_end, col_end] = searchpos("^[^ \t|]", "nW", "", line("$"))
  let cell = substitute(getline(row_start), "|", "", "g")
  let cell_list = split(cell)
  let value_list = map(cell_list, 'substitute(v:val, "[ \t]*$", "", "")')
  for i in range(row_start + 1, row_end - 1)
    let cell = substitute(getline(i), "|", "", "g")
    let cell_list = split(cell)
    let value = substitute(cell_list[col - 1], "[ \t]*$", "", "")
    if isfloat(value)
      let sum += str2float(value)
    endif
  endfor
  return sum
endfunction



fun! Executechecks()
  let longitudaux=len(getline(1,'$'))
  let cont=1
  let rengact = line('.')
  execute 'normal zi'
  while cont <= len(getline(1,'$'))
    execute 'normal gg'
    if getline(cont) =~ '.*\[\/\].*'
      execute 'normal ' . cont .'j'
      execute 'OrgCheckBoxUpdate'
      echo cont
    endif
    let cont += 1
  endwhile
  execute 'normal gg' 
  execute 'normal ' . rengact . 'j'
  echo rengact
endf

function! PrintCompletedTasks()
  " Actualizar las casillas de la lista de tareas
  silent! execute "OrgCheckBoxUpdate"
  
  " Obtener todas las líneas que comienzan con '** TODO'
  let lines = getline(1, '$')
  let todo_lines = filter(lines, 'v:val =~ "\*\* TODO"')
  echo todo_lines

  " Iterar sobre cada línea de tarea y contar cuántas tareas hay
  " y cuántas están completadas
  let completed_tasks = 0
  let total_tasks = 0
  for line in todo_lines
    let checkbox_count = line =~ '.*\[\d'
    let total_tasks += checkbox_count
    let completed_tasks += line =~ '.*\d\]'
  endfor

  " Imprimir si todas las tareas están completas o no
  if completed_tasks == total_tasks
    echo 'Todas las tareas están completas!'
  else
    echo 'Faltan tareas por completar.'
  endif
endfunction

command! -nargs=0 PrintCompleted call PrintCompletedTasks()

" FZF Custom Functions {{{2
"   ******** ******** ********
"  /**///// //////** /**/////
"  /**           **  /**
"  /*******     **   /*******
"  /**////     **    /**////
"  /**        **     /**
"  /**       ********/**
"  //       //////// //
function! Bibtex_ls()
  let bibfiles = (
      \ globpath('.', '*.bib', v:true, v:true) +
      \ globpath('..', '*.bib', v:true, v:true) +
      \ globpath('*/', '*.bib', v:true, v:true) +
      \ globpath(expand('%:h'), '*.bib',v:true,v:true)
      \ )
  let bibfiles = join(bibfiles, ' ')
  let source_cmd = 'bibtex-ls '.bibfiles
  return source_cmd
endfunction

function! s:bibtex_cite_sink_insert(lines)
    let r=system("bibtex-cite ", a:lines)
    execute ':normal! a' . r
    call feedkeys('a', 'n')
endfunction

inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_cite_sink_insert'),
                        \ 'up': '40%',
                        \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>


" Post plugin configs {{{1
colorscheme dracula
au BufEnter,BufNewFile *.tex hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
au BufEnter,BufNewFile *.md hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
au BufEnter,BufNewFile *.org hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
au BufEnter,BufNewFile *.rmd hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
" Function to randomize colorscheme {{{1
" .---.                 .-.                           .-.
" : .; :                : :                           : :
" : .',   .--.  ,-.,-. .-', : .--. ,-.,-.,-. .--.  .--. : `-.  .--. ,-.,-.,-. .--.
" : :.`.', .; ; : ,. :', .; :', .; :: ,. ,. :`._-.'',  ..': .. :', '_.': ,. ,. :', '_.'
" :_;:_;`.__,_;:_;:_;`.__.'`.__.':_;:_;:_;`.__.'`.__.':_;:_;`.__.':_;:_;:_;`.__.'


set background=dark

function RandomColorSchemeMyPicks()
  let mypicks = [
        \ 'dracula','nordfox','duskfox', 'carbonfox',
        \ 'afterglow', 'afterglow'            
        \,'carbonfox'
        \,'catppuccin_frappe'    
        \,'catppuccin_macchiato' 
        \,'catppuccin_mocha'     
        \,'dawnfox'              
        \,'dayfox'               
        \,'desert'               
        \,'dracula'              
        \,'duskfox'
        \,'elflord'
        \,'gruvbox8'
        \,'gruvbox8_hard'        
        \,'gruvbox8_soft'
        \,'habamax'              
        \,'kalisi'
        \,'koehler'
        \,'nightfox'
        \,'nordfox'              
        \,'pablo'
        \, 'slate'
        \, 'solarized8'
        \, 'solarized8_flat'
        \, 'solarized8_high'
        \, 'solarized8_low'
        \, 'sorbet'
        \, 'terafox'
        \, 'torte'          
        \, 'wildcharm'
        \, 'zaibatsu'       
  \]
  let mypick = mypicks[localtime() % len(mypicks)]
  echom mypick
  execute 'colorscheme '. mypick
  hi NonText guifg=bg
  hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

command NewColor call RandomColorSchemeMyPicks()

nnoremap <Leader>da :NewColor<CR>
nnoremap <Leader>br :colorscheme fogbell_light<CR>

let s:use_gui = exists('g:neovide') || has('gui_running') || (has('termguicolors') && &termguicolors)
if (s:use_gui)
  call RandomColorSchemeMyPicks()
endif

" cosas que no deberían de ponerse

hi NonText guifg=bg

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

function FixHiglightline()
  hi CursorLine term=bold cterm=bold guibg=Grey40
endfunction

command FixLine call FixHiglightline()

nnoremap <Leader>hi :FixLine<CR>

" }}}
