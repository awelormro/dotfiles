-- 󱟺 filetype settings
vim.cmd[[
" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

]]
--  Enable cursor line
vim.opt.cursorline=true
-- 󰓶 Convert tab into spaces
vim.opt.syntax='on'
vim.opt.expandtab=true
vim.opt.tabstop=2
vim.opt.shiftwidth=2

-- 󰍽 mouse settings
vim.opt.mouse='a'
vim.opt.mousemodel='popup'
vim.opt.mousehide=true

--  spell settings
vim.opt.spell=true
vim.opt.spelllang={'en','es','pt'}
vim.opt.hidden=true
