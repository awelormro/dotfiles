" vim: set fdm=marker:
"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_fileTypeExclude=['org']


let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:table_mode_align_char= ':' 

let g:vimwiki_list = [{'path': '~/abuwiki/mdtests/',
                     \ 'syntax': 'markdown', 'ext': '.md'},
                     \ {'path': '~/abuwiki/mainnotes', 'ext':'.wiki'
                     \ },
                     \]

let g:pandoc#syntax#conceal#urls = 1

let g:startify_session_dir="~/Plantillas/session"
fun Fixequations()
  execute '%s/\\( /\\(/g'
  execute '%s/ \\)/\\)/g'
endf

