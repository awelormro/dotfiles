"                                              __
"   _________  ____ ___  ____ ___  ___  ____  / /______
"  / ___/ __ \/ __ `__ \/ __ `__ \/ _ \/ __ \/ __/ ___/
" / /__/ /_/ / / / / / / / / / / /  __/ / / / /_(__  )
" \___/\____/_/ /_/ /_/_/ /_/ /_/\___/_/ /_/\__/____/



"Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }, 'xdefaults':{'left':'!','right':' '},  'rmarkdown':{'left':'<!--','right':'-->'} }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
" let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1
"
" " Enable NERDCommenterToggle to check all selected lines is commented or not 
" let g:NERDToggleCheckAllLines = 1
" Correct commenting on .Xdefaults and .Xresources
autocmd FileType xdefaults setlocal commentstring=!\ %s
autocmd FileType rmarkdown setlocal commentstring=<!--\ %s \-->

