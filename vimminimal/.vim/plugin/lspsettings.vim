" let lspOpts = #{autoHighlightDiags: v:true}

" autocmd User LspSetup call LspOptionsSet(lspOpts)

" let lspServers = [#{
"       \	  name: 'pylsp',
"       \	  filetype: 'python',
"       \	  path: '/usr/bin/pylsp',
"       \	  args: []
"       \ },
"       \ #{name: 'emmylua_ls',
"       \   filetype: 'lua',
"       \   path: 'emmylua_ls',
"       \   args: [],
"       \   initializationOptions: #{
"       \       settings: #{
"       \         Lua: #{ diagnostics: #{ 
"       \                  globals: ['vim']} 
"       \               }
"       \       }
"       \   },
"       \ },
"       \ #{name: "texlab",
"       \   filetype: "tex",
"       \   path: "texlab",
"       \   args: [],
"       \ }
"       \]

" autocmd User LspSetup call LspAddServer(lspServers)


" \   workspaceConfig: #{
" \   Lua: #{
" \     diagnostics: #{
" \       globals: ['vim']
" \     },
" \   }
" \ }
