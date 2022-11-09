" Tab management
nnoremap <S-Tab> :BufferLineCyclePrev<CR>
nnoremap <Tab> :BufferLineCycleNext<cr>
nnoremap <Leader>x  :bd <cr> 
nnoremap <Leader>t :enew<CR>
nnoremap <Leader><Tab> :BufferLineMoveNext<CR>
nnoremap <Leader><S-Tab> :BufferLineMovePrev<CR>
nnoremap <Leader><Space>  :BufferLineSortByExtension<CR>
nnoremap <Leader>1 :BufferLineTogglePin<CR>
nnoremap <Leader>2 :BufferLineSortByTabs<CR>
nnoremap <Leader>9 :BufferLineCloseLeft \| xa<CR>
nnoremap <Leader>8 :set foldmethod=expr<CR>
" Window movement
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Stop highlighting searchs
tnoremap <C-q> <C-\><C-n>
nnoremap <Esc>  :noh<CR>
nmap <F8> :TagbarToggle<CR>

" Windows resizing

nnoremap <A-H> <C-w>10<
nnoremap <A-J> <C-w>5+
nnoremap <A-K> <C-w>5-
nnoremap <A-L> <C-w>10>
" Nvimtree access
" noremap <C-n> :CocCommand explorer<CR>
noremap <C-n> :NvimTreeFindFileToggle<CR> 
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>cl :colorscheme base16-atelier-forest-light<CR>
nmap <leader>os :NewColor<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>tk <cmd>Telescope keymaps<cr>
nnoremap <leader>fm <cmd>Telescope file_browser<cr>
nnoremap <leader>fs <cmd>Telescope possession list<cr>
nnoremap <leader>q :HopChar1<CR>
nnoremap <leader>w :HopWord<CR>
nnoremap <leader>X :PossessionClose<CR>

" Zen mode Toggle
nnoremap <Leader>z :ZenMode<CR>
" navigate through window

" Toggle technical notes 
nnoremap <Leader>3 :lua require"nabla".toggle_virt() <CR>
" nnoremap <Leader>4 :lua require"nabla".disable_virt() <CR>

nnoremap j  gj
nnoremap k  gk

" nnoremap <leader>p :lua require("nabla").popup()
nnoremap <leader>p :lua require"nabla".popup({focusable=true})<CR>

nnoremap <silent> <Plug>(MyPluginVisual)
\ :<C-u>execute 'normal!' visualrepeat#reapply#VisualMode(0)<Bar>
\call MyPlugin#Operator('visual', "\<lt>Plug>(MyPluginVisual)")<CR>
