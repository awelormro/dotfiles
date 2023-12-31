" vim: set fdm=marker:
"▒███████▒▓█████▄▄▄█████▓▄▄▄█████▓▓█████  ██▓
"▒ ▒ ▒ ▄▀░▓█   ▀▓  ██▒ ▓▒▓  ██▒ ▓▒▓█   ▀ ▓██▒
"░ ▒ ▄▀▒░ ▒███  ▒ ▓██░ ▒░▒ ▓██░ ▒░▒███   ▒██░
"  ▄▀▒   ░▒▓█  ▄░ ▓██▓ ░ ░ ▓██▓ ░ ▒▓█  ▄ ▒██░
"▒███████▒░▒████▒ ▒██▒ ░   ▒██▒ ░ ░▒████▒░██████▒
"░▒▒ ▓░▒░▒░░ ▒░ ░ ▒ ░░     ▒ ░░   ░░ ▒░ ░░ ▒░▓  ░
"░░▒ ▒ ░ ▒ ░ ░  ░   ░        ░     ░ ░  ░░ ░ ▒  ░
"░ ░ ░ ░ ░   ░    ░        ░         ░     ░ ░
"  ░ ░       ░  ░                    ░  ░    ░  ░
"░

" Vars {{{1
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'
let g:bulletjournalextension='org'

" Find tags function {{{1
command! -bang -nargs=* FindTags
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case -- :'.shellescape(<q-args>)." ".g:zettelvim_dir, 1,
      \   fzf#vim#with_preview(), <bang>0)


command -nargs=+ ZettelCreateFile call ZettelWithName(<q-args>)

" Create file with name given {{{1
function! ZettelWithName(args)
  let argums = split(a:args, ' ')
  echo argums
  let date = strftime("%Y%m%d%H%M")
  let filename = a:args
  if len(argums)==1
    execute 'edit ' . g:zettelvim_dir . '/' . date . '-' . argums[0] . '.' . g:zettelvim_filetype
  elseif len(argums)==2
    execute 'edit ' . g:zettelvim_dir . '/' . argums[1] . '.' . argums[0]
  else
    echo 'error'
  endif
endfunction



command ZettelTimestamped call CreateTimestampedFile()

" Create Time stamped files {{{1
function! CreateTimestampedFile()
  let date = strftime("%Y%m%d%H%M")
  let extension = g:zettelvim_filetype
  execute 'edit ' . g:zettelvim_dir . '/' .  date . '.' . extension
endfunction


" Delete empty buffers {{{1
function! ZettelDeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction

" Save file with another name {{{1
fun! ZettelSaveas(nombre)
  let nameprev=expand('%')
  let g:zettel_prevdir=getcwd()
  let filedir=expand('%:h')
  let nombre=split(a:nombre, ' ')
  execute 'w ' . filedir . '/' . nombre[0]
  execute 'bd ' . nameprev
  execute '!rm ' . nameprev
  execute 'e ' . filedir . '/' . nombre[0]
  call ZettelDeleteEmptyBuffers()
endf

command! -nargs=+ ZettelChangeName call ZettelSaveas(<q-args>)

" Orgmode Settings {{{1
"
"                     __         ___
"    .'|=|`.     .'|=|  |   .'|=|_.'
"  .'  | |  `. .'  | |  | .'  |___
"  |   | |   | |   |=|.'  |   |`._|=.
"  `.  | |  .' |   |  |`. `.  |  __||
"    `.|=|.'   |___|  |_|   `.|=|_.''
"Zettelkasten configs {{{3
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'
let g:bulletjournalextension='org'
let g:org_indent=1
let g:org_agenda_files = [
      \ '~/Abuwiki/Orgtests/generaltodos.org',
      \ '~/Abuwiki/Orgtests/thesis/todo.org',
      \ ]


function! RestoreOrg()
  autocmd filetype org  nunmap <buffer> <Tab>
  autocmd filetype org  nunmap <buffer> <S-Tab>
  autocmd filetype org  nunmap <buffer> <Leader>sa
  autocmd filetype org  nunmap <buffer> <CR>
  autocmd filetype org  nmap <buffer> <Leader><Tab> @<Plug>OrgToggleFoldingNormal
  autocmd filetype org  nmap <buffer> <Leader><S-Tab> <Plug>OrgToggleFoldingReverse
  autocmd filetype org  nnoremap <buffer> <Leader><CR> <Plug>OrgHyperlinkFollow
  autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
  " autocmd filetype org setlocal foldmethod=expr
  " autocmd filetype org syntax clear texError
  " autocmd filetype org syntax clear texError
  " autocmd filetype org syntax clear org_table
  " autocmd FileType org syntax on
endfunction

augroup orgmaps
  au!
  autocmd FileType org  nnoremap <buffer> ,<CR> <buffer> <Plug>OrgNewHeadingBelowAfterChildrenNormal
  autocmd filetype org  nnoremap <buffer> <Leader><Tab> <Plug>OrgToggleFoldingNormal
  autocmd filetype org  nnoremap <buffer> <Leader><S-Tab> <Plug>OrgToggleFoldingReverse
  autocmd filetype org  nnoremap <buffer> nmap <Leader><Leader>sa  <Plug>OrgDateInsertTimestampActiveCmdLine
  autocmd BufEnter *.org syntax clear org_table
  autocmd filetype org  nnoremap <buffer> <Leader><CR> <Plug>OrgHyperlinkFollow
  autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> <Plug>OrgHyperlinkInsert
  autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
  autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
augroup END
" autocmd! BufEnter,BufNew,BufRead,BufNewFile *.org call RestoreOrg()


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

