
let g:lists_filetypes = ['wiki','markdown']
let g:wiki_root = '~/Abuwiki'

 augroup init_calendar
    autocmd!
    autocmd FileType calendar
          \ nnoremap <silent><buffer> <cr>
          \ :<c-u>call wiki#journal#open()<cr>
  augroup END

