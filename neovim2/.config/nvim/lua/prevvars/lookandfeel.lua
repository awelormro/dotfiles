vim.cmd[[
syntax on
set hidden
" Enable plugins and load plugin for the detected file type.
filetype plugin on


" Load an indent file for the detected file type.
filetype indent on

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

set mouse=a
set mousemodel=popup
set mousehide
set clipboard=unnamedplus
set spell
set cmdheight=0
]]

