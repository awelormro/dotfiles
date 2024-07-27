" vim: set fdm=marker:
"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_fileTypeExclude=['org', 'pandoc', 'vimwiki']

let g:startify_session_dir="~/Plantillas/session"
fun Fixequations()
  execute '%s/\\( /\\(/g'
  execute '%s/ \\)/\\)/g'
endf

autocmd FileType vimwiki,pandoc setlocal shiftwidth=4
autocmd FileType vimwiki,pandoc setlocal tabstop=4

set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:table_mode_align_char= ':' 
let g:vimwiki_tag_format = { 'pre_mark': '#\w\@=', 'post_mark': '', 'sep': ' ' }
let g:vimwiki_table_auto_fmt=0
let g:vimwiki_list = [{'path': '~/abuwiki/mdtests/',
                     \ 'syntax': 'markdown', 'ext': '.md'},
                     \ {'path': '~/abuwiki/mainnotes', 'ext':'.wiki'
                     \ },
                     \ {'path': '~/abuwiki/mdtotalwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'},
                     \]
fun! Start()
    " Don't run if: we have commandline arguments, we don't have an empty
    " buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    " Start a new buffer ...
    enew

    " ... and set some options for it
    setlocal
        \ bufhidden=wipe
        \ buftype=nofile
        \ nobuflisted
        \ nocursorcolumn
        \ nocursorline
        \ nolist
        \ nonumber
        \ noswapfile
        \ norelativenumber

    " Now we can just write to the buffer, whatever you want.
    call append('$', "")
    for line in split(system('fortune -a'), '\n')
        call append('$', '        ' . l:line)
    endfor

    call append('$', 'commands:')
    " No modifications to this buffer
    setlocal nomodifiable nomodified

    " When we go to insert mode start a new buffer, and start insert
    nnoremap <buffer><silent> e :enew<CR>
    nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
    nnoremap <buffer><silent> o :enew <bar> startinsert<CR>
endfun

" Run after "doing all the startup stuff"
" autocmd VimEnter * call Start()
