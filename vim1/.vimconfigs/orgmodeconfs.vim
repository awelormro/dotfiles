let g:org_indent=1
let g:org_agenda_files = [
      \ '~/Abuwiki/Orgtests/generaltodos.org',
      \ '~/Abuwiki/Orgtests/thesis/todo.org',
      \ ]

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



let g:tagbar_type_org = {
      \   'ctagstype':'org'
      \ , 'kinds':['h:header']
      \ , 'sro':'&&&'
      \ , 'kind2scope':{'h':'header'}
      \ , 'sort':0
      \ , 'ctagsbin':'~/.vimconfigs/orgmodetags.py'
      \ , 'ctagsargs': 'default'
\ }

