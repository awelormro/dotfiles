  local home = os.getenv('HOME')
  local db = require('dashboard')
  db.custom_header={
 -- ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 -- ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 -- ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 -- ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 -- ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 -- ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
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
 
  -- HACK
  -- macos
  -- db.preview_command = 'cat | lolcat -F 0.3'
  -- linux
  -- db.preview_command = 'ueberzug'
  --
  -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  -- db.preview_file_height = 11
  -- db.preview_file_width = 70
  db.custom_center = {
      {icon = '  ',
      desc = 'List all sessions                       ',
	  shortcut = ',   f s',
      action ='Telescope possession list'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'Telescope oldfiles',
      shortcut = ',   f o'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = ',   f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = ',   f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = ',   f w'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = 'Telescope dotfiles path=' .. home ..'/.config/nvim/init.vim',
      shortcut = ',   f d'},
    }
    db.custom_footer={'I use Arch BTW'}

