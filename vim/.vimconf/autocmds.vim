" vim: set fdm=marker:
" set t_Co=256
"   Post plugin configs {{{1

nmap <Leader><Tab> @<Plug>OrgToggleFoldingNormal
nmap <Leader><S-Tab> @<Plug>OrgToggleFoldingReverse
" nmap ,<CR> @<Plug>OrgNewHeadingBelowAfterChildrenNormal
" autocmd FileType org nmap ,<CR> @<Plug>OrgNewHeadingBelowAfterChildrenNormal
nmap <Leader><Leader>sa  @<Plug>OrgDateInsertTimestampActiveCmdLine
autocmd BufEnter *.org syntax clear org_table
" colorscheme dracula

autocmd FileType fern setlocal nonumber
autocmd FileType fern setlocal norelativenumber
