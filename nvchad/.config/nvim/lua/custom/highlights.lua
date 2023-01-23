-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

M.override = {
  CursorLine = {
    bg = "one_bg",
  },
  Comment = {
    italic = true,
  },
}

M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
  IndentBlanklineIndent1 = { fg = "#E06C75", bold = true },
  IndentBlanklineIndent2 = { fg = "#E5C07B", bold = true },
  IndentBlanklineIndent3 = { fg = "#98C379", bold = true },
  IndentBlanklineIndent4 = { fg = "#56B6C2", bold = true },
  IndentBlanklineIndent5 = { fg = "#61AFEF", bold = true },
  IndentBlanklineIndent6 = { fg = "#C678DD", bold = true },
}

-- M.override = {
--    CursorLine = { bg = "black2" }
-- }
return M
