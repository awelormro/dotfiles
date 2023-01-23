
local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_header={
  '░░░░░░░░▄▄█▀▀▄░░░░░░░',
  '░░░░░░▄█████▄▄█▄░░░░░',
  '░░░░░▄▀██████▄▄██░░░░',
  '░░░░░█░█▀░░▄▄▀█░█░░░░',
  '░░░░░▄██░░░▀▀░▀░█░░░░',
  '░░▄█▀░░▀█░▀▀▀▀▄▀▀█▄░░',
  '░▄███░▄░░▀▀▀▀▀▄░███▄░',
  '░██████░░░░░░░██████░',
  '░▀███▀█████████▀███▀░',
  '░░░░▄█▄░▀▀█▀░░░█▄░░░░',
  '░▄▄█████▄▀░▀▄█████▄▄░',
  '█████████░░░█████████'
  }

vim.cmd[[hi DashboardHeader guifg=#FF3300]]
vim.cmd[[hi  DashboardCenter   guifg=#FF2814 ]]
vim.cmd[[hi  DashboardShortCut guifg=#00aaFF ]]
vim.cmd[[hi  DashboardFooter   guifg=#aF0FFa ]]

db.custom_center = {
    {icon = '  ',
    desc = 'List all sessions                       ',
  shortcut = '<Spc>   f s',
    action ='Telescope possession list'},
    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = '<Spc>   f o'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = '<Spc>   f f'},
    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = '<Spc>   f b'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = '<Spc>   f w'},
    {icon = '  ',
    desc = 'Open Personal dotfiles                  ',
    action = 'Telescope dotfiles path=' .. home ..'/.config/nvim/init.lua',
    shortcut = ',   f d'},
  }
db.custom_footer={'I use Arch BTW'}

