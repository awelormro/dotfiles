vim9script
g:mapleader = " "
g:maplocalleader = " "
g:tex_fast = ""

# nnoremap <expr> ; if :
command! -nargs=1 Py3Reload py3 import importlib; importlib.reload(<args>)
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprev<CR>
nnoremap <silent> <Leader>q :bw<CR>
nnoremap <silent> <Leader>Q :bw!<CR>
inoremap jj <C-c>
inoremap kk <C-c>
inoremap jk <C-o>
inoremap kj <C-o>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <silent> <Leader>e :30Lexplore<CR>
nnoremap <silent> <Leader>f<Leader>f :30Lexplore %:h<CR>
nnoremap <silent> <Leader>rx :CustomExplore<Cr>
nnoremap ´ '
nnoremap ¨ "
iabbrev '  ''<Left><C-R>=Eatchar('\s')<CR>
iabbrev "  ""<Left><C-R>=Eatchar('\s')<CR>
iabbrev (  ()<Left><C-R>=Eatchar('\s')<CR>
iabbrev [  []<Left><C-R>=Eatchar('\s')<CR>
iabbrev {  {}<Left><C-R>=Eatchar('\s')<CR>
iabbrev (' ('')<Left><Left><C-R>=Eatchar('\s')<CR>
iabbrev (" ("")<Left><Left><C-R>=Eatchar('\s')<CR>
iabbrev [" [""]<Left><Left><C-R>=Eatchar('\s')<CR>
iabbrev {" {""}<Left><Left><C-R>=Eatchar('\s')<CR>
iabbrev ~~ ~/<C-x><C-F><C-R>=Eatchar('\s')<CR>
iabbrev ~p <C-x><C-F><C-R>=Eatchar('\s')<CR>


g:sneak_active = 0

# Redefinir s para activar Sneak y marcar que está activo
nnoremap <silent> s :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 2, 0, 2, 1)<CR>
nnoremap <silent> S :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 2, 1, 2, 1)<CR>
nnoremap <silent> t :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 1, 0, 0, 0)<CR>
nnoremap <silent> T :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 1, 1, 0, 0)<CR>
nnoremap <silent> f :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 1, 0, 1, 0)<CR>
nnoremap <silent> F :let g:sneak_active = 1<CR>:<C-U>call sneak#wrap('', 1, 1, 1, 0)<CR>


# En modo normal (repetitivo, pero puede servir)
nnoremap <expr><silent> <Esc><Esc> (g:sneak_active == 1 ? ':let g:sneak_active = 0<CR>' : "\<Esc>")

nnoremap <expr> ; g:sneak_active == 1 ? "\<Plug>Sneak_;" : ":"
nnoremap <expr> , g:sneak_active == 1 ? "\<Plug>Sneak_," : ","

g:netrw_usetab = 1
nmap <unique> <Leader>sh <Plug>NetrwShrink
def CustomExplorer()
    # Intenta ejecutar Rexplore
    try
        execute 'Rexplore'
    catch
        # Si falla, ejecuta Explore
        execute 'Explore'
    endtry
enddef

command CustomExplore call CustomExplorer()
iabbrev llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer viverra vulputate felis, eget dignissim tellus. Maecenas eleifend tortor sem, vel bibendum mi auctor in. Pellentesque vitae ante sit amet ligula rhoncus finibus. Donec feugiat leo lacus. Maecenas sit amet metus non velit blandit pharetra. Nullam ut sem placerat velit placerat ornare non id nisl. Sed ac pulvinar felis. Duis id nisl quis nibh dignissim suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis molestie nunc ullamcorper, pharetra diam quis, feugiat dolor. Aenean ac laoreet purus. <CR>Pellentesque viverra arcu quis elit tincidunt, sed iaculis nibh viverra. Vivamus nec augue ligula. Duis sed sapien molestie, feugiat ante eget, interdum lorem. Nullam tempus est vel elit venenatis pulvinar. Aenean venenatis non dui eget ultrices. Nam eget interdum turpis. Aliquam quis mattis sapien. Cras ac purus ac velit tempus ultrices et elementum sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec congue aliquet blandit.
iabbrev mmars Marco Antonio Romero Sánchez
iabbrev aabu awelormro
