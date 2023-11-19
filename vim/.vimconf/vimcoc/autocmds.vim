
" Post plugin configs {{{1

nmap <Leader><Tab> @<Plug>OrgToggleFoldingNormal
nmap <Leader><S-Tab> @<Plug>OrgToggleFoldingReverse
nmap ,<CR> @<Plug>OrgNewHeadingBelowAfterChildrenNormal
nmap <Leader><Leader>sa  @<Plug>OrgDateInsertTimestampActiveCmdLine
" execute 'AirlineTheme wombat'
let g:airline_theme='wombat'
colorscheme dracula

autocmd FileType fern setlocal nonumber
autocmd FileType fern setlocal norelativenumber
" au BufEnter,BufNewFile *.tex hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
" au BufEnter,BufNewFile *.md hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
" au BufEnter,BufNewFile *.org hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
" au BufEnter,BufNewFile *.rmd hi Conceal ctermbg=NONE ctermfg=fg guifg=fg guibg=bg
