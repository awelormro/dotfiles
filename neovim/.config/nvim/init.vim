source $HOME/.config/nvim/confs/globals.vim
source $HOME/.config/nvim/confs/coconfs.vim
luafile $HOME/.config/nvim/confs/nvimtreeconfs.lua
luafile $HOME/.config/nvim/confs/globals.lua
luafile $HOME/.config/nvim/confs/dash.lua
luafile $HOME/.config/nvim/confs/tabsconfs.lua
luafile $HOME/.config/nvim/confs/telescopeconfs.lua
luafile $HOME/.config/nvim/confs/plugs.lua
luafile $HOME/.config/nvim/confs/linesetup.lua
source $HOME/.config/nvim/confs/keymaps.vim
source $HOME/.config/nvim/confs/texconfs.vim

" let g_coc_border_joinchars=[]
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr
