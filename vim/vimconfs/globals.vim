"   ____ _       _           _
"  / ___| | ___ | |__   __ _| |___
" | |  _| |/ _ \| '_ \ / _` | / __|
" | |_| | | (_) | |_) | (_| | \__ \
"  \____|_|\___/|_.__/ \__,_|_|___/


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
set mouse=a
set clipboard=unnamedplus
set updatetime=100
" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

set noshowmode
" set notimeout
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
" set termguicolors
if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  else
    set termguicolors
  endif

" UTF encoding
set encoding=UTF-8

" Enable plugins and load plugin for the detected file type.
filetype plugin on


" Load an indent file for the detected file type.
filetype indent on

" Conceal cursor activated by default
set concealcursor="nvic"

" reset the cursor on start (for older versions of vim, usually not required)
" augroup myCmds
" au!
" augroup END

syntax on
set hidden

" Add numbers to the file.
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
"set nowrap

let g:indentLine_enabled = 1 " While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Indentline plugin char display
let g:indentLine_char = '│'
" Ignore capital letters during search.
set ignorecase

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

" Make wildmenu behave like similar to Bash completion.
set wildmode=longest:full,full

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Fzf session plugin file sessions path
let g:fzf_session_path = $HOME . '/.vim/session'

" Rounded corners for Coc popup menus
let g:coc_borderchars = [ "─", "│",  "─","│", "╭", "╮", "╯", "╰",]


" Goyo enabled to toggle Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" Function to toggle conceallevel in case of required
function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction
