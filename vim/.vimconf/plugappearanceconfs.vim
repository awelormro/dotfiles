" vim: set fdm=marker:
"
" ######
" #     # #      #    #  ####   ####   ####  #    # ######  ####
" #     # #      #    # #    # #    # #    # ##   # #      #
" ######  #      #    # #      #      #    # # #  # #####   ####
" #       #      #    # #  ### #      #    # #  # # #           #
" #       #      #    # #    # #    # #    # #   ## #      #    #
" #       ######  ####   ####   ####   ####  #    # #       ####
"
"
" Plugin configurations {{{1

let g:indentLine_setConceal=0
let g:indentLine_faster=1

" let 
" autocmd BufEnter,WinEnter,WinNew,FileType nerdtree call Togglerainbowconceal()
" autocmd WinEnter,WinLeave,BufWritePre,FileType * call Toggleambiwidth()
" Lens settings {{{2
"  .
"  /       ___  , __     ____
"  |     .'   ` |'  `.  (
"  |     |----' |    |  `--.
"  /---/ `.___, /    | \___.'
let g:lens#height_resize_min=12
let g:lens#width_resize_min=2

" Fern Settings {{{2
"
"     _/_/_/_/
"    _/        _/_/    _/  _/_/  _/_/_/
"   _/_/_/  _/_/_/_/  _/_/      _/    _/
"  _/      _/        _/        _/    _/
" _/        _/_/_/  _/        _/    _/

let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

function Toggleambiwidth()
  if &ambiwidth=='single' 
    if &filetype=='nerdtree'
      let &ambiwidth='double'
      execute 'RainbowToggleOff'
    elseif &filetype=='fern'
      let &ambiwidth='double'
    endif
  else
    let &ambiwidth='single'
  endif
endfunction
function Togglerainbowconceal()
  if &filetype=='nerdtree'
    execute 'RainbowToggleOff'
  endif
endfunction
let g:fern#renderer#default#leading = ' '
let g:fern#renderer#nerdfont#padding= ' '
let g:WebDevIconsNerdTreeAfterGlyphPadding = '   -'
" Goyo settings {{{2
"
"         ___               ___   ___
"    .'|=|_.'    .'|=|`.   |   | |   |   .'|=|`.
"  .'  |___    .'  | |  `. `.  |_|  .' .'  | |  `.
"  |   |`._|=. |   | |   |   `.   .'   |   | |   |
"  `.  |  __|| `.  | |  .'    |   |    `.  | |  .'
"    `.|=|_.''   `.|=|.'      |___|      `.|=|.'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:Hexokinase_highlighters = ['background']
" red blue green #0900F9 rgb(13,85,19)o
let g:EasyMotion_do_mapping=1

" Orgmode Settings {{{2
"
"                     __         ___
"    .'|=|`.     .'|=|  |   .'|=|_.'
"  .'  | |  `. .'  | |  | .'  |___
"  |   | |   | |   |=|.'  |   |`._|=.
"  `.  | |  .' |   |  |`. `.  |  __||
"    `.|=|.'   |___|  |_|   `.|=|_.''
"Zettelkasten configs {{{3
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/Abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'
let g:bulletjournalextension='org'
let g:org_indent=1
let g:org_agenda_files = [
      \ '~/Abuwiki/Orgtests/generaltodos.org',
      \ '~/Abuwiki/Orgtests/thesis/todo.org',
      \ ]


function! RestoreOrg()
  autocmd filetype org  unmap <buffer> <Tab>
  autocmd filetype org  unmap <buffer> <S-Tab>
  autocmd filetype org  unmap <buffer> <Leader>sa
  autocmd filetype org  unmap <buffer> <CR>
  autocmd filetype org  nnoremap <buffer> <Leader><CR> :OrgHyperlinkFollow<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
  autocmd FileType org syntax on
  autocmd filetype org setlocal foldmethod=expr
  " autocmd filetype org syntax clear texError
  " autocmd filetype org syntax clear texError
  autocmd filetype org syntax clear org_table
endfunction

" autocmd! BufEnter,BufNew,BufRead,BufNewFile *.org call RestoreOrg()

" Orgmode Ctags Config {{{3
let g:org_linebreaks_auto=0
let g:orgmodectagspyfile='~/.vimconfigs/orgmodetags.py'

let g:tagbar_type_org = {
      \   'ctagstype':'org'
      \ , 'kinds':['h:header']
      \ , 'sro':'&&&'
      \ , 'kind2scope':{'h':'header'}
      \ , 'sort':0
      \ , 'ctagsbin': g:orgmodectagspyfile
      \ , 'ctagsargs': 'default'
\ }

" Orgmode Test Functions {{{3
function! CreateDiarybuffer()
  let s:date = strftime("%Y-%m-%d")
  let s:dir = expand("~/Abuwiki/sort/" . s:date)
  let s:file = s:dir . "/" . s:date . ".org"

  " Verifica si el archivo ya existe y contiene un encabezado
  if filereadable(s:file)
    let s:header = getline(1)
    if s:header == "* " . s:date
      execute "silent! edit " . fnameescape(s:file)
      return
    endif
  endif

  " Crea el directorio si no existe
  if !isdirectory(s:dir)
    call mkdir(s:dir, "p")
  endif

  " Abre el archivo en un nuevo buffer
  execute "silent! edit " . fnameescape(s:file)

  " Añade el encabezado si no existe
  let s:header = getline(1)
  if s:header != "* " . s:date
    call appendbufline(s:file, 0, "* " . s:date) " Añade la fecha como título
    call appendbufline(s:file, 1, "#+TITLE: Diario de " . s:date) " Añade el título del diario
    call appendbufline(s:file, 2, "#+STARTUP: overview") " Establece la vista de inicio como resumen
  endif
endfunction

function! OrgTableSumColumn()
  let sum = 0
  let col = getpos(".")[2]
  let row_start = search("^[ \t]*|", "bnW")
  let [row_end, col_end] = searchpos("^[^ \t|]", "nW", "", line("$"))
  let cell = substitute(getline(row_start), "|", "", "g")
  let cell_list = split(cell)
  let value_list = map(cell_list, 'substitute(v:val, "[ \t]*$", "", "")')
  for i in range(row_start + 1, row_end - 1)
    let cell = substitute(getline(i), "|", "", "g")
    let cell_list = split(cell)
    let value = substitute(cell_list[col - 1], "[ \t]*$", "", "")
    if isfloat(value)
      let sum += str2float(value)
    endif
  endfor
  return sum
endfunction



fun! Executechecks()
  let longitudaux=len(getline(1,'$'))
  let cont=1
  let rengact = line('.')
  execute 'normal zi'
  while cont <= len(getline(1,'$'))
    execute 'normal gg'
    if getline(cont) =~ '.*\[\/\].*'
      execute 'normal ' . cont .'j'
      execute 'OrgCheckBoxUpdate'
      echo cont
    endif
    let cont += 1
  endwhile
  execute 'normal gg' 
  execute 'normal ' . rengact . 'j'
  echo rengact
endf

function! PrintCompletedTasks()
  " Actualizar las casillas de la lista de tareas
  silent! execute "OrgCheckBoxUpdate"
  
  " Obtener todas las líneas que comienzan con '** TODO'
  let lines = getline(1, '$')
  let todo_lines = filter(lines, 'v:val =~ "\*\* TODO"')
  echo todo_lines

  " Iterar sobre cada línea de tarea y contar cuántas tareas hay
  " y cuántas están completadas
  let completed_tasks = 0
  let total_tasks = 0
  for line in todo_lines
    let checkbox_count = line =~ '.*\[\d'
    let total_tasks += checkbox_count
    let completed_tasks += line =~ '.*\d\]'
  endfor

  " Imprimir si todas las tareas están completas o no
  if completed_tasks == total_tasks
    echo 'Todas las tareas están completas!'
  else
    echo 'Faltan tareas por completar.'
  endif
endfunction

command! -nargs=0 PrintCompleted call PrintCompletedTasks()

