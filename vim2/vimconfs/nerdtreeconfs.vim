
"  _____                         ___
" |_   _|___ ___ ___ ___ ___ ___|  _|___
"   | | |  _| -_| -_|  _| . |   |  _|_ -|
"   |_| |_| |___|___|___|___|_|_|_| |___|


let g:NERDTreeChDirMode = 2
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

 function! s:trash(path, ...) abort 
   let options = copy(a:0 ? a:1 : {}) 
   let script = 'tell app "Finder" to move the POSIX file "%s" to trash' 
   let abspath = fnamemodify(a:path, ':p') 
   return s:Process.start([ 
         \ 'osascript', '-e', printf(script, escape(abspath, '"')) 
         \], options) 
 endfunction 
" augroup my-glyph-palette
"   autocmd! *
"   autocmd FileType fern call glyph_palette#apply()
"   autocmd FileType nerdtree,startify call glyph_palette#apply()
" augroup END
function! s:init_fern() abort
  " Define NERDTree like mappings
  nmap <buffer> o <Plug>(fern-action-open:edit)
  nmap <buffer> go <Plug>(fern-action-open:edit)<C-w>p
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> T <Plug>(fern-action-open:tabedit)gT
  nmap <buffer> i <Plug>(fern-action-open:split)
  nmap <buffer> gi <Plug>(fern-action-open:split)<C-w>p
  nmap <buffer> s <Plug>(fern-action-open:vsplit)
  nmap <buffer> gs <Plug>(fern-action-open:vsplit)<C-w>p
  nmap <buffer> ma <Plug>(fern-action-new-path)
  nmap <buffer> dd <Plug>(fern-action-trash=)
  nmap <buffer> P gg
  nmap <buffer> <C-l> <C-w>l
  nmap <buffer> <C-k> <C-w>k
  nmap <buffer> <C-j> <C-w>j
  nmap <buffer> <C-h> <C-w>h

  nmap <buffer> C <Plug>(fern-action-enter)
  nmap <buffer> u <Plug>(fern-action-leave)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> R gg<Plug>(fern-action-reload)<C-o>
  nmap <buffer> cd <Plug>(fern-action-cd)
  nmap <buffer> CD gg<Plug>(fern-action-cd)<C-o>

  nmap <buffer> I <Plug>(fern-action-hidden-toggle)
  nmap <buffer><silent> <Plug>(fern-action-hidden-toggle)
  nmap <buffer> q :<C-u>quit<CR>
endfunction
augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END


let g:tagbar_type_html = {
            \ 'ctagsargs' : ['--fields=+{roles}', '--extras=+{reference}'],
            \ 'kinds' : [
            \ 'a:named anchors',
            \ 'h:H1 headings',
            \ 'i:H2 headings',
            \ 'j:H3 headings',
            \ 'c:classes',
            \ 'C:stylesheets'
            \ ],
            \ 'sro'        : '::',
            \ 'kind2scope' : {
            \ 'a' : 'anchors',
            \ 'h' : 'headings',
            \ 'i' : 'headings',
            \ 'j' : 'headings',
            \ 'c' : 'class',
            \ 'C' : 'stylesheets'
            \ }
            \ }
