" vim: set fdm=marker:

"   Mappings {{{1
" Set the comma as the leader key and put ; to invoke command line mode {{{2
let mapleader = " "
let maplocalleader = " "
nnoremap ; :
map ´ `
map ¨ "
" Buffer management {{{2

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc>:noh<CR>
" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
nnoremap <Space><Space>w <Plug>(easymotion-s2)
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
nnoremap <leader>sa :wa!<CR>
nnoremap <Leader>x :bd!<CR>
nnoremap <Leader>bd :bufdo bd<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h 0<Plug>(easymotion-lineforward)
" map <Leader>h <Plug>(easymotion-linebackward)

" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" Plugin mappings {{{2
if vimfilexplorer==1
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>
elseif vimfilexplorer==2
nnoremap <Leader>e :NERDTreeFind<CR>
endif
" nnoremap <Leader><leader>l <Plug>(easyoperator-line-select)
" omap <Leader>l  <Plug>(easyoperator-line-select)
" xmap <Leader>l  <Plug>(easyoperator-line-select)
inoremap <S-Del> <C-o>de
nnoremap <F2> :TagbarToggle<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>X :wa!<CR>:SClose<CR>:echo 'Cleared Vim'<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fm :Marks<CR>
nnoremap <leader>f<leader>f :Files <c-r>=expand('%:p:h') . '/'<cr><cr>
nnoremap <Leader>fk :Maps<CR> 
nnoremap <Leader>ra :RainbowToggle<CR>
nnoremap <Leader>t<Space>s :SignatureToggleSigns<CR>
nnoremap <Leader>t<Space>g :GitGutterToggle<CR>
nnoremap <Leader>t<Space>a :ALEToggle<CR>
nnoremap <Leader>im :ImportantFiles<CR>
nnoremap <Leader>cp :PREVCOLOR<CR>
nnoremap <Leader>cs :COLORSCROLL<CR>
nnoremap <Leader>cn :NEXTCOLOR<CR>

" WhichKey prefix dictionary {{{2
let g:which_key_map =  {}

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_map.f = { 'name' : '+file' }

nnoremap <silent> <leader>fs :update<CR>
let g:which_key_map.f.s = 'save-file'

nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
let g:which_key_map.f.d = 'open-vimrc'

nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'q' : 'open-quickfix'    ,
      \ 'l' : 'open-locationlist',
      \ }
 
" Section for vimwiki mappings {{{2

" disable table mappings
let g:vimwiki_key_mappings = {
            \ 'all_maps': 1,
            \ 'global': 1,
            \ 'headers': 1,
            \ 'text_objs': 1,
            \ 'table_format': 1,
            \ 'table_mappings': 0,
            \ 'lists': 1,
            \ 'links': 1,
            \ 'html': 1,
            \ 'mouse': 0,
            \ }

let g:vimwiki_global_ext = 0
autocmd FileType vimwiki nmap <buffer> <Leader><CR> <Plug>VimwikiFollowLink
autocmd FileType vimwiki nmap <buffer> <Leader><Tab> :bn<CR>
autocmd FileType vimwiki nmap <buffer> <Leader><S-Tab> :bp<CR>
" }}}
" }}}

" Experimental functions {{{1
" Example function for printing {{{
fun FuncionExample()
  let lista=['perro', 'gato', 'pato', 'cobayo']
  echo 'Elige tu animalito'
  let contador=0
  for animal in lista
    echo contador+1.': '.animal
    let contador=contador+1
  endfor
  let seleccion=input('Elige un animal por su número: ')
  echo ' '
  echo 'Elegiste: '.lista[seleccion-1]
endf
" }}}
" Better integration of oldfiles {{{

fun ScrollPages(start,numberargs,maxfiles)
  let i = a:start
  let archivos=v:oldfiles
  let j = a:numberargs
  let k = 0 + a:start
  while i<a:numberargs
    echo i+1.': '.archivos[i]
    let i = i+1
  endwhile
endf

fun Betterof()
  let archivos=v:oldfiles
  let pagina=1
  let archivosPorPagina=10
  echo 'Better OldFiles:'
  let i = 0
  let j = 0
  call ScrollPages(0,10,10)
  let generate=input('Enter file number, n for next page, or p for previous page')
  execute 'e '.archivos[generate]
endf
function! MostrarElementos()
    let inicio = g:indice_actual + 1
    let fin = g:indice_actual + 10
    " echo "Elementos " . inicio . " a " . fin . ": " . join(g:lista_elementos[g:indice_actual : fin - 1], ', ')
    echo "Elementos " . inicio . " a " . fin . ": " 
    let i=g:indice_actual
    while i<fin
      echo i+1.': '.v:oldfiles[i]
      let i=i+1
    endwhile
endfunction

let g:lista_elementos=v:oldfiles
let g:indice_actual=0

function! SeleccionarElemento(input)
    if a:input == 'n'
        let g:indice_actual += 10
        call MostrarElementos()
    elseif a:input == 'p' && g:indice_actual >= 10
        let g:indice_actual -= 10
        call MostrarElementos()
    elseif a:input =~ '\d\+'
        execute 'e 'v:oldfiles[a:input]
    else
        echo "Entrada no válida"
        return
    endif

endfunction

fun BetterOldFiles()
call MostrarElementos()

" Solicitar entrada del usuario
let input = input('Ingrese el número, n o p: ')
call SeleccionarElemento(input)
endf
" }}}

" }}}
