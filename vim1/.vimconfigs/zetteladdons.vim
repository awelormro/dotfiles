let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/Abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'

command! -bang -nargs=* FindTags
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case -- :'.shellescape(<q-args>)." ".g:zettelvim_dir, 1,
      \   fzf#vim#with_preview(), <bang>0)


command -nargs=+ ZettelCreateFile call ZettelWithName(<q-args>)

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

function! CreateTimestampedFile()
  let date = strftime("%Y%m%d%H%M")
  let extension = g:zettelvim_filetype
  execute 'edit ' . g:zettelvim_dir . '/' .  date . '.' . extension
endfunction


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
