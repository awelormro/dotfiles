-- vim: set fdm=marker:
--  __  __                 
-- |  \/  | __ _ _ __  ___ 
-- | |\/| |/ _` | '_ \/ __|
-- | |  | | (_| | |_) \__ \
-- |_|  |_|\__,_| .__/|___/
--              |_|        
vim.cmd[[
" set spelllang=en,es,pt
" set hidden
"  Buffer management {{{1
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap ; :
nnoremap <Leader>sa :wa!<CR>

" Type space-x to close buffer
nnoremap <silent><leader>x :bd<CR>

" 󰚀  Zen mode settings {{{1 
nnoremap <Leader>z :Goyo<CR>
nnoremap <Space>e :NvimTreeFindFileToggle<cr>
nnoremap <Space>fo :Telescope oldfiles<cr>
nnoremap <Space>co :Telescope colorscheme<cr>
nnoremap <Leader>fk :Telescope keymaps<CR>
" You can split the window in Vim by typing :split or :vsplit.

" 󱣱 Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l. {{{1
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" 󰲏 Resize split windows using arrow keys by pressing: {{{1
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
let mapleader = " "
let maplocalleader = " "
let g:vimtex_view_method = 'zathura'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
]]

-- 󰓆 Tree-sitter settings {{{1
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "cpp", "lua", "vim", "python", "c_sharp", "git_rebase", "git_config", "gitcommit", "gitignore" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "tex" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "tex","org" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}