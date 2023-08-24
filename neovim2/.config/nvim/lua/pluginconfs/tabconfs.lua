-- Bufferline nvim setup 󰓩
vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    -- numbers = "ordinal",
    separator_style = "slant",
    highlights = {
        fill = {
            bg = {
                attribute = "fg",
                highlight = "Pmenu"
            }
        }
    }
  },
}

-- FZF setup 
vim.cmd[[
    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
]]
