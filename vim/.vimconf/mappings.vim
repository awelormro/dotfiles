" vim: set fdm=marker:

" Mappings {{{1
" Set the comma as the leader key and put ; to invoke command line mode {{{2
let mapleader = " "
let maplocalleader = " "
nnoremap ; :
map ´ `
" Buffer management {{{2

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc>:noh<CR>
" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
nnoremap <Space><Space>w <Plug>(easymotion-s2)
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
nnoremap <leader>sa :wa!<CR>
nnoremap <Leader>x :bd!<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <leader>f<leader>f :Files <c-r>=expand('%:p:h') . '/'<cr><cr>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" Plugin mappings {{{2
if vimfilexplorer==1
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>
elseif vimfilexplorer==2
nnoremap <Leader>e :NERDTreeFind<CR>
endif
" nnoremap <Leader><leader>l <Plug>(easyoperator-line-select)
" omap <Leader>l  <Plug>(easyoperator-line-select)
" xmap <Leader>l  <Plug>(easyoperator-line-select)

nnoremap <F2> :TagbarToggle<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>fk :Maps<CR> 
nnoremap <Leader>ra :RainbowToggle<CR>
" Orgmode mappings {{{2
autocmd FileType org nmap <Buffer> <Leader><Tab> @<Plug>OrgToggleFoldingNormal
autocmd FileType org nmap <Leader><S-Tab> @<Plug>OrgToggleFoldingReverse
autocmd FileType org nmap ,<CR> @<Plug>OrgNewHeadingBelowAfterChildrenNormal
autocmd FileType org nmap <Leader><Leader>sa  @<Plug>OrgDateInsertTimestampActiveCmdLine
" }}}
" }}}
" Pairing mappings {{{1
" inoremap " ""<left>
" inoremap ' ''<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap ( ()<Left>
" let g:jedi#completions_command='<F12>'
