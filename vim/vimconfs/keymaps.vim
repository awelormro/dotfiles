
"     __
"    / /_____  __  ______ ___  ____ _____  _____
"   / //_/ _ \/ / / / __ `__ \/ __ `/ __ \/ ___/
"  / ,< /  __/ /_/ / / / / / / /_/ / /_/ (__  )
" /_/|_|\___/\__, /_/ /_/ /_/\__,_/ .___/____/
"           /____/               /_/
"  FIXME 

" MAPPINGS --------------------------------------------------------------- {{{

" Tab management
nnoremap <Tab> :bnext\|set concealcursor="nvic"<CR>
nnoremap <S-Tab> :bprev\|set concealcursor="nvic"<CR>
" Set the backslash as the leader key.
let mapleader = ","

" Type ,sa to save all buffers
nnoremap <leader>sa  :wa<CR>

" Type ,sf to force save a buffer
nnoremap <leader>sf  :w!<CR>

" Press \\ to jump back to the last cursor position.
" nnoremap <leader>\ ``
nnoremap <leader> ","
" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Type ,x to close buffer
nnoremap <silent><leader>x :bd<CR>
" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" WhichKey mapping
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.

" Press ,fo to show recently open files with fzf
nnoremap <leader>fo :History<CR> 

" Press ,ft to show colorschemes with fzf
nnoremap <leader>ft :Colors<CR> 

" Press ,fb to show Buffer list with fzf
nnoremap <leader>fb :Buffers<CR> 

" Press fo to show recently open files with fzf
nnoremap <leader>fm :Files<CR> 

" Press ,fk to show Keymappings with fzf
nnoremap <leader>fk :Maps<CR> 

" Press ,fc to show recently open command history with fzf
nnoremap <leader>fc :Commands<CR> 

" Press ,fs to show Coc actions list with fzf
nnoremap <leader>fs :CocFzfList snippets<CR> 

" Press ,fy to show recently open yank clipboard with fzf
nnoremap <leader>fy :CocFzfList yank<CR> 


" Launches fzf prompt to search sessions with <leader>l.
nnoremap <leader>sl :Sessions<CR>

" Starts the prompt to save a session, awaiting a name to be entered.
nnoremap <leader>ss :Session<Space>
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
nnoremap <Esc> :noh\|call popup_clear(1)<CR><Esc>
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
" Map Control+n to open Coc-Explorer
:nmap <C-e> <Cmd>CocCommand explorer<CR>

nnoremap <leader>sy :set concealcursor="nvic"<CR> 
" }}}

" Type ,g to enter in zen mode via goyo
nmap <leader>g :Goyo<CR>


" Type ,se to toggle 
" conceal Level to character visualization
nnoremap <leader>se :Toggleconceal<CR>

" Type ,a to open coc-actions
vmap <leader>a <Plug>(coc-codeaction-selected) 
nmap <leader>a <Plug>(coc-codeaction-selected) 


" vim-powered terminal in split window
map <Leader>te :term ++close<cr><C-w>J<C-w>k<C-w>7+<C-w>j
" tmap <Leader>t <c-w>:term ++close<cr>
tmap <Leader>tq <C-\><C-n>:q!<CR>
" vim-powered terminal in new tab
map <Leader>T :ter ++curwin<cr>
tmap <Leader>T <c-w>:bde!  term ++close<cr>


" Minimap Keymappings
nnoremap <Leader>mt :MinimapToggle<CR>
nnoremap <Leader>mc :MinimapClose<CR>
nnoremap <Leader>mr :MinimapRefresh<CR> 

" Vim function to toggle virtualedit
nnoremap <Leader>ve :ToggleVirtualedit<CR> 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

tnoremap <C-q> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
" tnoremap <C-q> <C-\><C-n>:q<CR>

fun! VM_Start()
  nmap <buffer> <C-C> <Esc>
  imap <buffer> <C-C> <Esc>
endfun

fun! VM_Exit()
  nunmap <buffer> <C-C>
  iunmap <buffer> <C-C>
endfun

nnoremap <Leader>q :syntax enable<CR> 
