-- vim: set fdm=marker:
-- $$$$$$$\                      $$\
-- $$  __$$\                     $$ |
-- $$ |  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\
-- $$ |  $$ | \____$$\ $$  _____|$$  __$$\
-- $$ |  $$ | $$$$$$$ |\$$$$$$\  $$ |  $$ |
-- $$ |  $$ |$$  __$$ | \____$$\ $$ |  $$ |
-- $$$$$$$  |\$$$$$$$ |$$$$$$$  |$$ |  $$ |
-- \_______/  \_______|\_______/ \__|  \__|


require('dashboard').setup {
  --  nvim dashboard header {{{1
  theme='doom',
  config= {
    --  Header center settings {{{2
    header={
      '',
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
      '█████████░░░█████████',
      'Abuvim',
      '',
    },
    -- 󱔸  Center icons setup {{{2
    center={
      {icon='󰅒  ',desc='Recent files',key='fo',action='Telescope oldfiles'},
      {icon='  ',desc='Open Wiki',key='ww',action='e /home/abu/Abuwiki/Orgtests/main.org'},
      {icon='󱥬  ',desc='Show sessions',key='fs',action='Telescope possession list'},
      {icon='  ',desc='Coloscheme selector',key='th',action='Telescope colorscheme'},
    }
  },
}

