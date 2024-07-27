" vim: set fdm=marker:
"
" vimwiki tags completion {{{

function! WikiTagsCompletion()
  call complete(col('.'),g:nuevalista)
  return ''
endfunction

fun BujoCompletion()
  call complete(col('.'),g:bujoitems)
  return ''
endf

" }}}
" Test Function with lines {{{1 
function! EliminarAlmohadillaEnLista(lista)
  let i=0
  let g:nuevalista=a:lista
  while i<len(a:lista)
    let g:nuevalista[i] = substitute(g:nuevalista[i], ' \#', '', 'g')
    let i=i+1
  endwhile
endfunction

fun CrearListaElementos()
  let g:wikitags=systemlist("rg --no-filename -o --no-line-number '\\s\\\#[A-Za-z0-9_]+' ~/abuwiki/mdtests")
endf
let g:pandoc#syntax#conceal#urls = 1


fun EliminarDuplicados(lista)
  let g:wikiunduplist=filter(copy(a:lista), 'index(a:lista, v:val, v:key+1)==-1')
endf
" }}}
" Auto commands for custom completion methods {{{

autocmd FileType vimwiki setlocal completefunc=CompleteWkTags
autocmd VimEnter * call CrearListaElementos()
autocmd VimEnter * call EliminarAlmohadillaEnLista(g:wikitags)
autocmd VimEnter * call EliminarDuplicados(g:nuevalista)
" autocmd FileType vimwiki setlocal completefunc=CompleteMonths
" let referencessorted=sort(referenceslist)
" let desclist=systemlist("pandoc ~/abuwiki/mdtests/testbiblio.md -f markdown --metadata-file ~/abuwiki/mdtests/metadataexample.yml --citeproc --bibliography ~/abuwiki/mdtests/biblio.bib -t plain | pandoc -t markdown")

" }}}
" Bullet journal items completion register {{{

let g:bujoitems=[
      \  {"word":"󰃭 ","menu":"Bullet journal schedule"}, 
      \  {"word":" ","menu":"Bullet journal assign"}, 
      \  {"word":" ","menu":"Bullet journal event"}, 
      \  {"word":"󱘒 ","menu":"Bullet journal note"}, 
      \  {"word":" ","menu":"Bullet journal important"}, 
      \  {"word":"󰄭 ","menu":"Bullet journal check"}, 
      \  {"word":" ","menu":"Bullet journal uncheck"}, 
      \]

" }}}
" Vimwiki Tags completion {{{

fun CompleteWkTags(findstart,base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    let res = []
    for m in g:wikiunduplist
      if m =~ '^' .. a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfun
" }}}
" Complete months complete function example {{{

fun! CompleteMonths(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    " find months matching with "a:base"
    let res = []
    let mnths=[{'word':'Jan','menu':'First month'},{'word':'Feb','menu':'Second month'}]
    " for m in split("Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec")
    let i = 0
    while i<len(mnths)
      let m=mnths[i]['word']
      if m =~ '^' .. a:base
        call add(res, mnths[i])
      endif
      let i =i+1
    " endfor
    endwhile
    return res
  endif
endfun
" }}}
" Completion with fuzzy finding example {{{1

fun! CompleteMonths1(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
     find months matching with "a:base"
    for m in split("Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec")
      if m =~ '^' .. a:base
	call complete_add(m)
      endif
      sleep 100m	" simulate searching for next match
      if complete_check()
	break
      endif
    endfor
    return []
  endif
endfun
" }}}
" Bib files management {{{1
" Bib files exploring with strings {{{

let referencestring=system("grep @ ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g |    awk '{ print $2 }'")
let g:referenceslist=split(referencestring,"\n")
" let g:referenceslist=split(referencestring," ̉Ç")
let authorstring=system("grep author ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'author\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
let g:authorslist=split(authorstring,"\n")
let titlestring=system("grep -w \"title\" ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'title\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
let g:titleslist=split(titlestring,"\n")
let yearstring=system("grep -w \"year\" ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'year\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
let g:yearbiblist=split(yearstring,"\n")

" }}}
" Bibliography description creation {{{

function BibliographyDescription(list)
  let newlist = copy(a:list)
  let i=0
  let newelement=' '
  let listabibliography=[]
  while i<len(newlist)
    if newlist[i] != ''
      let newelement= newelement.' '.newlist[i]
    elseif i==len(newlist)-1
      call add(listabibliography, newelement)
    else
      call add(listabibliography, newelement)
      let newelement=' '
    endif
    if i==len(newlist)-1
      call add(listabibliography,newelement)
    endif
    let i=i+1
  endwhile
  let g:Bibliographydesc=listabibliography
endfunction


function BibliographyDesc(list)
  let listabiblio=copy(a:list)
  let i=0
  let g:Descripcionbiblio=[]
  while i<len(listabiblio)
    let elemento="@".listabiblio[i]
    let elementodesc=system("echo ".elemento." | pandoc -f markdown -t plain --citeproc --bibliography ~/abuwiki/mdtests/biblio.bib")
    let listadesc=split(elementodesc,"\n")
    let j=1
    let descreal = " "
    while j<len(listadesc)
      let descreal=descreal.listadesc[j]
      let j=j+1
    endwhile
    call add(g:Descripcionbiblio,descreal)
    let i=i+1
  endwhile
endfunction


" }}}
" Bibliography keys refreshing {{{

function Refreshbibliokeys()
  let referencestring=system("grep @ ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g |    awk '{ print $2 }'")
  let g:referenceslist=split(referencestring,"\n")
  let authorstring=system("grep author ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'author\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
  let g:authorslist=split(authorstring,"\n")
  let titlestring=system("grep -w \"title\" ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'title\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
  let g:titleslist=split(titlestring,"\n")
  let yearstring=system("grep -w \"year\" ~/abuwiki/mdtests/biblio.bib | sed s/'{'/' '/g | sed s/','/''/g | sed s/'}'/''/g| sed s/'year\\s'/''/g|sed s/'='/''/g|sed s/'\"'/''/g|sed s/'\\s\\{2,\\}'/''/g")
  let g:yearbiblist=split(yearstring,"\n")
endfunction

" }}}
" Description Bibliographies creation {{{

function Vimdescbiblio()
  let g:descripcionbiblio = []
  let i=0
  while i<len(g:referenceslist)
    let comp=g:authorslist[i]." (".g:yearbiblist[i].") ".g:titleslist[i]
    call add(g:descripcionbiblio,comp)
    let i=i+1
  endwhile
endfunction

" }}}
" Bibliography Dictionary creation {{{

function BibliographyCompletionDictionary(words,menus)
  let g:bibliorefs=[]
  let i=0
  while i<len(a:words)
    let args={'word':a:words[i],'menu':a:menus[i]}
    call add(g:bibliorefs,args)
    let i = i+1
  endwhile
endfunction

function GenerateBibliographyReferences()
  call Vimdescbiblio()
  call BibliographyCompletionDictionary(g:referenceslist,g:descripcionbiblio)
endfunction

" }}}
fun Refcomplete()
  call GenerateBibliographyReferences()
  call complete(col('.'),g:bibliorefs)
  return ''
endf
" }}}
