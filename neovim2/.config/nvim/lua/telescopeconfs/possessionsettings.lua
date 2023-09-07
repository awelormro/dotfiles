--   Possesion nvim settings
require('possession').setup {
    commands = {
        save = 'SSave',
        load = 'SLoad',
        delete = 'SDelete',
        list = 'SList',
    },
    plugins ={
        delete_hidden_buffers = false, -- Remove the deletion of hidden buffers without windows
        delete_buffers = true, -- Delete all buffers before loading another session
    },
}

--   Telescope integration
require('telescope').load_extension('possession')
