
vim.g.vimtex_compiler_latexmk = {
     options = {
       '-pdf',
       '-shell-escape',
       '-verbose',
       '-file-line-error',
       '-synctex=1',
       '-interaction=nonstopmode',
     },
    }

vim.g.vimtex_syntax_conceal = {
       accents= 1,
       ligatures= 1,
       cites= 1,
       fancy= 1,
       greek= 1,
       math_bounds= 1,
       math_delimiters= 1,
       math_fracs= 1,
       math_super_sub= 1,
       math_symbols= 1,
       sections= 1,
       styles= 1,
      }

vim.g.vimtex_syntax_custom_cmds = {
  {
    name = 'longrightarrow',
    mathmode = 1,
    concealchar = '→',
  },
  {
    name = 'question',
    fancy = 1,
    concealchar= '○ ',
  },
  {
    name= 'choice',
    fancy=1,
    concealchar= '○',
  },
}