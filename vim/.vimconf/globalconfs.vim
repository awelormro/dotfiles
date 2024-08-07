
" vim: set fdm=marker:
"
" Appearance settings {{{1
" Colorscheme and syntax settings {{{2
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
" set updatetime=200
set ttyscroll=4
set ttyfast
set regexpengine=1

syntax sync linebreaks=2
" syntax sync ccomment
" syntax sync maxlines=400
syntax sync maxlines=100
set t_Co=256
" Set shift width to 4 spaces.
set shiftwidth=2
set termguicolors
" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab
" Wild Menu settings {{{2
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
set lazyredraw
set redrawtime=500
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

" Settings for mouse and Clipboard {{{2
set mouse=a
set mousemodel=popup
set mousehide
set clipboard=unnamedplus

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
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
    " autocmd InsertLeave * set nocursorline
augroup END

" UTF encoding
set encoding=UTF-8
set fillchars+=fold:─
set fillchars+=foldopen:─
set fillchars+=foldclose:→
set fillchars+=vert:\┃
set fillchars+=eob:\  

" Spell settings {{{2
set spell
set spelllang=es,en,pt
set spellsuggest=fast,100,timeout:500
" Settings for buffer management {{{2
set hidden
" Resize options for lens.vim {{{2
" let g:lens#width_resize_max=10
" let g:lens#height_resize_max=10
" }}}
