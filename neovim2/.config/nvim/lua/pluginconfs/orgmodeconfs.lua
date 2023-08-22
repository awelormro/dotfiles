vim.cmd[[
syntax on
autocmd filetype org set foldmethod=expr
autocmd filetype org  unmap <buffer> <Tab>
autocmd filetype org  unmap <buffer> <S-Tab>
autocmd filetype org  unmap <buffer> <Leader>sa
autocmd filetype org  unmap <buffer> <CR>
autocmd filetype org  nnoremap <buffer> <Leader><CR> :OrgHyperlinkFollow<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
" autocmd filetype org syntax clear texOnlyMath
" autocmd filetype org syntax clear texError
" autocmd filetype org syntax clear texError
" autocmd filetype org syntax clear org_table
]]
