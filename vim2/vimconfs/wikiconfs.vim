
 augroup init_calendar
    autocmd!
    autocmd FileType calendar
          \ nnoremap <silent><buffer> <cr>
          \ :<c-u>call wiki#journal#open()<cr>
  augroup END

    let g:wiki_journal = {
          \ 'name': 'journal',
          \ 'frequency': 'daily',
          \ 'date_format': {
          \   'daily' : '%Y-%m-%d',
          \   'weekly' : '%Y_w%V',
          \   'monthly' : '%Y_m%m',
          \ },
          \ 'index_use_journal_scheme': v:true,
          \}
