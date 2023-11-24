" vim: set fdm=marker:
"
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
inoremap <C-S-W> <C-o>dw
" Plugin mappings {{{4
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>
" nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <F2> :TagbarToggle<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>fk :Maps<CR> 
nnoremap <leader>f<leader>f :Files <c-r>=expand('%:p:h') . '/'<cr><cr>
nnoremap <Leader>ra :RainbowToggle<CR>
nnoremap <leader>am :call Toggleamb()<CR>
function Toggleamb()
  if &ambiwidth=='double'
    let &ambiwidth='single'
  else
    let &ambiwidth='double'
  endif
endfunction
" }}}

