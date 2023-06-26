-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local enable_providers = {
      "python3_provider",
      "node_provider",
      -- and so on
    }

    for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
    end

vim.cmd[[
set relativenumber
set spell
set spelllang=en,es
let maplocalleader = " "
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/Abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'
let g:bulletjournalextension='org'
let g:org_indent=1
nnoremap <Leader>sa :wa!<CR>
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



function! Bibtex_ls()
  let bibfiles = (
      \ globpath('.', '*.bib', v:true, v:true) +
      \ globpath('..', '*.bib', v:true, v:true) +
      \ globpath('*/', '*.bib', v:true, v:true) +
      \ globpath(expand('%:h'), '*.bib',v:true,v:true)
      \ )
  let bibfiles = join(bibfiles, ' ')
  let source_cmd = 'bibtex-ls '.bibfiles
  return source_cmd
endfunction

function! s:bibtex_cite_sink_insert(lines)
    let r=system("bibtex-cite ", a:lines)
    execute ':normal! a' . r
    call feedkeys('a', 'n')
endfunction

inoremap <silent> @@ <c-g>u<c-o>:call fzf#run({
                        \ 'source': Bibtex_ls(),
                        \ 'sink*': function('<sid>bibtex_cite_sink_insert'),
                        \ 'up': '40%',
                        \ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>




function! SearchAndStore(pattern)
  " Ejecutar la búsqueda y llenar la ventana quickfix
  execute 'grep -lr "' . a:pattern . '" Abuwiki/*'

  " call system('grep -lr ' . a:pattern .  ' Abuwiki/*')
  " Inicializar la variable de resultados como una lista vacía
  let g:searchresults = []

  " Recorrer los elementos de la ventana quickfix y agregarlos a la lista de resultados
  for r in getqflist()
    call add(g:searchresults, r['text'])
  endfor

  " Regresar el resultado de la búsqueda
  echo g:searchresults
  return g:searchresults
  bdelete */*tags
endfunction

" Use emoji-fzf and fzf to fuzzy-search for emoji, and insert the result
function! InsertEmoji(emoji)
    let @a = system('cut -d " " -f 1 | emoji-fzf get', a:emoji)
    normal! "agP
endfunction

command! -bang Emoj
  \ call fzf#run({
      \ 'source': 'emoji-fzf preview',
      \ 'options': '--preview ''emoji-fzf get --name {1}''',
      \ 'sink': function('InsertEmoji')
      \ })

" Ctrl-e in normal and insert mode will open the emoji picker.
" Unfortunately doesn't bring you back to insert mode 😕
map <C-e> :Emoj<CR>
imap <C-e> <C-o><C-e>


" Open main orgmode 
nnoremap <Leader>ww :edit ~/Abuwiki/Orgtests/main.org<CR>
" nnoremap <Leader>w<Leader>w <CR>

" Uncomment uncomfortable maps for orgmode
autocmd filetype org  unmap <buffer> <Tab>
autocmd filetype org  unmap <buffer> <S-Tab>
autocmd filetype org  unmap <buffer> <Leader>sa
autocmd filetype org  unmap <buffer> <CR>
autocmd filetype org  nnoremap <buffer> <Leader><CR> :OrgHyperlinkFollow<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader><CR> :OrgHyperlinkInsert<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wp :OrgHyperlinkPreviousLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader>wn :OrgHyperlinkNextLink<CR>
autocmd filetype org  nnoremap <buffer> <Leader><Leader>c :OrgCheckBoxUpdate<CR>
autocmd filetype org syntax on
autocmd filetype org setlocal foldmethod=expr


let g:startify_padding_left= &columns/4

" Show aviable startify commands
let g:startify_commands = [
    \ {'fo': ['   Check reciently opened files', 'Telescope oldfiles']},
    \ {'ww': ['   Open Wiki Index','e ~/Abuwiki/Orgtests/main.org' ] },
    \ {'fk': ['   Show keymaps', 'Telescope keymaps']},
    \ {'ft': ['   Change colorscheme','Telescope themes'] },
    \ ]


let g:startify_padding_left= &columns/4

" Show file bookmarks 
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, {'zh':'~/.zshrc'}, {'i3':'~/.config/i3/config'},{'tk':'~/.config/kitty/kitty.conf'},{'xr':'~/.Xresources'},{'tm':'~/.tmux.conf'}, {'al':'~/.config/alacritty/alacritty.yml'}]

let g:startify_enable_special = 0

let g:startify_session_dir = '/home/abu/Plantillas/session'


    let g:startify_lists = [
          \ { 'type': 'commands',  'header': ['                                  Commands']       },
          \ ]


"autocmd! User GoyoEnter Twilight 
"autocmd! User GoyoLeave Twilight

]]

vim.cmd [[

" Set shift width to 4 spaces.

set shiftwidth=2

" Set tab width to 4 columns.

set tabstop=2

" Use space characters instead of tabs.

set expandtab

augroup ilikecursorline
   autocmd VimEnter * :highlight CursorLine guibg=#282a2e
augroup END
nnoremap <leader>na :lua require"nabla".toggle_virt()<CR>
nnoremap <leader>tk :Telescope keymaps<CR>
nnoremap <leader>e :NvimTreeFindFileToggle<CR>
let g:vscode_snippets_path="~/Plantillas/abusnips/jsonsnips"
]]

vim.g.vscode_snippets_path = "~/Plantillas/abusnips/jsonsnips"
-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.cmd[[setlocal ve=all]]
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", {noremap = true})
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", {noremap = true})
    else
        vim.cmd[[setlocal ve=]]
        vim.cmd[[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end
-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap('n', '<leader>v', ":lua Toggle_venn()<CR>", { noremap = true})
