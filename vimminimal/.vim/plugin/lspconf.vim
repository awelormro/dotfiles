vim9script

g:LspAddServer([{
	  name: 'pylsp',
	  filetype: 'python',
	  path: '/usr/bin/pylsp',
	  args: []
 }])

g:LspAddServer([{name: 'emmylua_ls',
  filetype: 'lua',
  path: 'emmylua_ls',
  args: [],
  initializationOptions: {
  settings: {
    Lua: { 
      diagnostics: { 
        globals: ['vim']
      },
      workspace: {
        library: [
        "/usr/share/nvim/runtime/lua",
        "/usr/share/vim/vim91/"
        ]
      }
    }
    }
  },
}])

g:LspAddServer([
      {name: "texlab",
        filetype: "tex",
        path: "texlab",
        args: [],
      }])
