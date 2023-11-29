" Youcompleteme Completion settings {{{2
 if !exists('g:ycm_semantic_triggers')
     let g:ycm_semantic_triggers = {}
 endif
 au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
 " let g:ycm_use_ultisnips_completer = 1
 set completeopt+=popup
 let g:UltiSnipsExpandTrigger="<CR>"
 let g:UltiSnipsJumpForwardTrigger="<tab>"
 let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

  augroup MyYCMCustom
    autocmd!
    autocmd FileType * let b:ycm_hover = {
      \ 'popup_params': {
      \     'maxwidth': 80,
      \     'border': [],
      \     'borderchars': ['─', '│', '─', '│', '┌', '┐', '┘', '└'],
      \   },
      \ }
  augroup END
 " Snippets directory
 let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]

 let g:Verdin#cooperativemode = 1
" Custom snippets path
 let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"


"       _____
"    __|___  |__  ____   _  ____  _____  _____  ______    __   ______
"   |   ___|    ||    \ | ||    ||     ||     ||   ___| _|  |_|   ___|
"    `-.`-.     ||     \| ||    ||    _||    _||   ___||_    _|`-.`-.
"   |______|  __||__/\____||____||___|  |___|  |______|  |__| |______|
"      |_____|
"
"  Ultisnips options {{{1
" Activate snippet with Enter, navigate with Tab and Shift-tab
" let g:UltiSnipsExpandTrigger="<CR>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" let g:UltiSnipsListSnippets = "<A-Tab>"

" Snippets directory
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]


" Custom snippets path
let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"



