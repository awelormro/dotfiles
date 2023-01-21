local M = {}
-- vim.cmd[[set concealcursor="nvic"]]
M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "chadracula",
  -- hl_add = {
  --  IndentBlanklineIndent1 = { fg ="#E06C75", gui="nocombine" },
  --  IndentBlanklineIndent2 = { fg ="#E5C07B", gui="nocombine" },
  --  IndentBlanklineIndent3 = { fg ="#98C379", gui="nocombine" },
  --  IndentBlanklineIndent4 = { fg ="#56B6C2", gui="nocombine" },
  --  IndentBlanklineIndent5 = { fg ="#61AFEF", gui="nocombine" },
  --  IndentBlanklineIndent6 = { fg ="#C678DD", gui="nocombine" },
   -- IndentBlanklineIndent1 = { fg ="#E06C75", bold = true },
   -- IndentBlanklineIndent2 = { fg ="#E5C07B", bold = true },
   -- IndentBlanklineIndent3 = { fg ="#98C379", bold = true },
   -- IndentBlanklineIndent4 = { fg ="#56B6C2", bold = true },
   -- IndentBlanklineIndent5 = { fg ="#61AFEF", bold = true },
   -- IndentBlanklineIndent6 = { fg ="#C678DD", bold = true },
  -- }
}
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
vim.cmd.conceallevel=2
vim.cmd.conealcursor="nvic"
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

vim.g.indent_blankline_char_highlight_list = {
  'IndentBlanklineIndent1',
  'IndentBlanklineIndent2',
  'IndentBlanklineIndent3',
  'IndentBlanklineIndent4',
  'IndentBlanklineIndent5',
  'IndentBlanklineIndent6'
}
return M
