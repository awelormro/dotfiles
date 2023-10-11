
"  ____   ____  _                _
" |_  _| |_  _|(_)              / |_
"   \ \   / /  __   _ .--..--. `| |-'.---.  _   __
"    \ \ / /  [  | [ `.-. .-. | | | / /__\\[ \ [  ]
"     \ ' /    | |  | | | | | | | |,| \__., > '  <
"      \_/    [___][___||__||__]\__/ '.__.'[__]`\_]

" Let vimtex to compile using shell-escape mode
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" Vimtex plugin per filetype
filetype plugin indent on
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info) preps.
syntax enable

" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_viewer = 'sioyek'
" let g:vimtex_view_general_viewer = 'evince'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let g:tex_fast=""
" Vimtex syntax conceal config, 1 is enabled, 0 is disabled

let g:vimtex_syntax_conceal = {
      \ 'accents': 1,
      \ 'ligatures': 1,
      \ 'cites': 1,
      \ 'fancy': 1,
      \ 'greek': 1,
      \ 'math_bounds': 1,
      \ 'math_delimiters': 1,
      \ 'math_fracs': 1,
      \ 'math_super_sub': 1,
      \ 'math_symbols': 1,
      \ 'sections': 1,
      \ 'styles': 1,
      \}

let g:tex_fold_additional_envs = ['eqnarray','choices','questions','tabular',] 

let g:vimtex_syntax_custom_cmds = [
      \ {'name': 'longrightarrow', 
      \ 'mathmode': 1, 'concealchar': '→'},
      \ {'name': 'question', 
      \ 'fancy':1,'concealchar': '○ ' },
      \ {'name': 'choice', 'fancy':1,'concealchar': '○' }
      \]

      " \ {'name': 'frac', 'mathmode':1,'concealchar': }
      "
"
