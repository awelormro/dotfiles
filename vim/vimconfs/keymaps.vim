

" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = ","

" Press \\ to jump back to the last cursor position.
" nnoremap <leader>\ ``
nnoremap <leader> ","
" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>
nnoremap <silent><leader>x :bd<CR>
" Type jj to exit insert mode quickly.
inoremap jj <Esc>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
"
"

" Exit insert mode after creating a new line above or below the current line.
"

" Center the cursor vertically when moving to the next word during a search.

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" We map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> :noh<CR>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
" nnoremap gcc ,c<space>
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
"nnoremap <C-n> :NERDTreeToggle<cr>
:nmap <C-n> <Cmd>CocCommand explorer<CR>
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}

vmap <leader>a <Plug>(coc-codeaction-selected) 
nmap <leader>a <Plug>(coc-codeaction-selected) 
