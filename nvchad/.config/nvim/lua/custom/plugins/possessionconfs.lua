vim.opt.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,globals,winsize,winpos,terminal'

require('possession').setup {
  commands = {
      save = 'SSave',
      load = 'SLoad',
      delete = 'SDelete',
      list = 'SList',
  },
  plugins = {
      delete_hidden_buffers = false,
  },
}
