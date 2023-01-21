
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
            [[        888                     d8b             ]],
            [[        888                     Y8P             ]],
            [[        888                                     ]],
            [[ 8888b. 88888b. 888  888888  88888888888b.d88b. ]],
            [[    "88b888 "88b888  888888  888888888 "888 "88b]],
            [[.d888888888  888888  888Y88  88P888888  888  888]],
            [[888  888888 d88PY88b 888 Y8bd8P 888888  888  888]],
            [["Y88888888888P"  "Y88888  Y88P  888888  888  888]],

          --   [[                               __                ]],
          --   [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
          --   [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
          --   [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
          --   [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
          --   [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
         }
         dashboard.section.buttons.val = {
             dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
	     dashboard.button( " fo", " Recent files", ":Telescope oldfiles<CR>" ),
             dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
         }
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
