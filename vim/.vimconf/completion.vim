" vim: set fdm=marker:
"
"  ▄████▄   ▒█████   ███▄ ▄███▓ ██▓███   ██▓    ▓█████▄▄▄█████▓▓█████
" ▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒▓██░  ██▒▓██▒    ▓█   ▀▓  ██▒ ▓▒▓█   ▀
" ▒▓█    ▄ ▒██░  ██▒▓██    ▓██░▓██░ ██▓▒▒██░    ▒███  ▒ ▓██░ ▒░▒███
" ▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██ ▒██▄█▓▒ ▒▒██░    ▒▓█  ▄░ ▓██▓ ░ ▒▓█  ▄
" ▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒▒██▒ ░  ░░██████▒░▒████▒ ▒██▒ ░ ░▒████▒
" ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░▒▓▒░ ░  ░░ ▒░▓  ░░░ ▒░ ░ ▒ ░░   ░░ ▒░ ░
"   ░  ▒     ░ ▒ ▒░ ░  ░      ░░▒ ░     ░ ░ ▒  ░ ░ ░  ░   ░     ░ ░  ░
" ░        ░ ░ ░ ▒  ░      ░   ░░         ░ ░      ░    ░         ░
" ░ ░          ░ ░         ░                ░  ░   ░  ░           ░  ░
" ░
" 
set pumheight=10
set pumwidth=10

" Function to add complete filenames {{{1
function! MyCompleteFileName() abort
  " match a (potential) wildcard preceding cursor position
  " NOTE: \f is a filename character, see :h 'isfname'
  let l:pattern = matchstr(strpart(getline('.'), 0, col('.') - 1), '\v(\f|\*|\?)*$')
  let l:file_comp_list = getcompletion(l:pattern, "file")
  if l:pattern == ''
    let l:file_comp_list += getcompletion(".", "file")
  endif
  " let l:file_comp_list += getcompletion(l:pattern, "file_in_path")
  call complete(col('.') - len(l:pattern), l:file_comp_list)

  " must return an empty string to show the menu
  return ''
endfunction

inoremap <C-x><C-F> <C-R>=MyCompleteFileName()<CR>
" }}}
if completion==1
" Mucomplete settings {{{1
"
"
" .88b  d88. db    db  .o88b.  .d88b.  .88b  d88. d8888b.
" 88'YbdP`88 88    88 d8P  Y8 .8P  Y8. 88'YbdP`88 88  `8D
" 88  88  88 88    88 8P      88    88 88  88  88 88oodD'
" 88  88  88 88    88 8b      88    88 88  88  88 88~~~
" 88  88  88 88b  d88 Y8b  d8 `8b  d8' 88  88  88 88
" YP  YP  YP ~Y8888P'  `Y88P'  `Y88P'  YP  YP  YP 88

let g:ycm_auto_trigger=1
let g:ycm_min_num_of_chars_for_completion=2
autocmd FileType vim let b:Verdin_setomnifunc = 1
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " Add only if Vim beeps during completion
let g:mucomplete#enable_auto_at_startup=1
let g:Verdin#cooperativemode = 0

if snippets==1
  let g:UltiSnipsExpandTrigger = "<f5>"        " Do not use <tab>
  let g:UltiSnipsJumpForwardTrigger = "<Tab>"  " Do not use <c-j>
  let g:UltiSnipsJumpBackwardTrigger= "<S-Tab>"  " Do not use <c-j>
  " let g:Verdin#setomnifunc=1
  function! MyCompleteFileName() abort
    " match a (potential) wildcard preceding cursor position
    " NOTE: \f is a filename character, see :h 'isfname'
    let l:pattern = matchstr(strpart(getline('.'), 0, col('.') - 1), '\v(\f|\*|\?)*$')
    let l:file_comp_list = getcompletion(l:pattern, "file")
    if l:pattern == ''
      let l:file_comp_list += getcompletion(".", "file")
    endif
    " let l:file_comp_list += getcompletion(l:pattern, "file_in_path")
    call complete(col('.') - len(l:pattern), l:file_comp_list)

    " must return an empty string to show the menu
    return ''
  endfunction
  let g:UltiSnipsExpandTrigger = '<f5>'  " Use something different from <tab>
  let g:mucomplete#chains = {}
  let g:mucomplete#chains.default = ['ulti', 'path', 'omni', 'keyn', 'dict', 'uspl']
  inoremap <C-x><C-F> <C-R>=MyCompleteFileName()<CR>
  let g:mucomplete#chains = {}
  let g:mucomplete#chains.default = ['ulti', 'path', 'omni', 'keyn', 'dict', 'uspl']
  let g:UltiSnipsExpandTrigger = "<CR>"

  fun! MyCR()
    return pumvisible()
          \ ? "\<c-r>=UltiSnips#ExpandSnippetOrJump()\<cr>"
          \ : "\<cr>"
  endf

  inoremap <silent> <expr> <plug>MyCR MyCR()
  imap <cr> <plug>MyCR
endif
" set spellsuggest=fast,timeout:150

" let g:mucomplete#can_complete = {}
" let g:mucomplete#can_complete.tex =
"   \ { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
" " autocmd FileType vim let b:Verdin_setomnifunc = 1
" }}}
elseif completion==2
"  Coc-nvim settings {{{1
"   __        __
"  / ()  _   / ()
" |     / \_|
"  \___/\_/  \___/
"
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
set pumheight=10
" Some servers have issues with backup files, see #649
set nobackup
set completeopt-=preview
set completeopt+=noselect,noinsert
set nowritebackup
let g:coc_config_home="~/.vimconf"
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=150
let g:coc_borderchars=['─', '│', '─', '│', '┌', '┐', '┘', '└']
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(0) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" inoremap <silent><expr> <Space>
"       \ coc#pum#visible() ? coc#pum#confirm() :
"       \ CheckBackspace() ? "\<Space>" :
"       \

" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? "\<Down>" :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(0) : "\<C-h>"
inoremap <expr> <S-Space> coc#pum#visible() ? coc#pum#confirm() : "\<S-Space>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<Tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<S-Tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ CheckBackspace() ? "\<TAB>" :
"       \ coc#refresh()

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

let g:coc_global_extensions = ['coc-vimtex', 'coc-json', 'coc-calc', 'coc-jedi']
"  }}}
elseif completion==3
" Youcompleteme settings {{{1
let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'perl': ['->'],
  \   'ruby,rust': ['.', '::'],
  \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
  \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!(?=[a-zA-Z]{3,4})'],
  \   'html': ['<', '"', '</', ' '],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
" \   'php': ['->', '::'],
" \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
" Habilitar autocompletado de YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_delay = 500
  if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:ycm_semantic_triggers.python = ['re!(?=[a-zA-Z_]{3})']
let g:ycm_semantic_triggers.vim = ['re!(?=[a-zA-Z_]{3})']
let g:ycm_semantic_triggers.html = ['re!(?=[a-zA-Z_]{3})']
" Mapear la tecla Tab para seleccionar la primera opción de autocompletado
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
let g:ycm_cache_omnifunc=1
let g:ycm_auto_trigger=1
filetype plugin on 
filetype indent on
let g:Verdin#cooperativemode = 1
set completeopt+=menuone
set completeopt+=menu
let g:Verdin#autocompletedelay = 200
let g:Verdin#autocompletedelay=50
set omnifunc=syntaxcomplete#Complete
set completeopt+=popup
" set completeopt+=noselect
" let g:Verdin#setomnifunc = 1
set omnifunc=syntaxcomplete#Complete
" inoremap <silent> <C-R>=<SNR>191_RequestSemanticCompletion()<CR>
" autocmd InsertCharPre call AutoComplete1()
fun! AutoComplete1()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 2] !~ '\K'
        \ && getline('.')[col('.') - 1] !~ '\K'
        call feedkeys("\<C-R>=<SNR>191_RequestSemanticCompletion()<CR>", 'n')
    end
endfun
let g:ycm_use_ultisnips_completer = 1
let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
" }}}
elseif completion==4
" Minimal completion settings {{{1
"
" #    # # #    # # #    #   ##   #       ####   ####  #    # #####  #
" ##  ## # ##   # # ##  ##  #  #  #      #    # #    # ##  ## #    # #
" # ## # # # #  # # # ## # #    # #      #      #    # # ## # #    # #
" #    # # #  # # # #    # ###### #      #      #    # #    # #####  #
" #    # # #   ## # #    # #    # #      #    # #    # #    # #      #
" #    # # #    # # #    # #    # ######  ####   ####  #    # #      ######
" Simple autocompletion settings {{{2
" Minimalist Tab Complete Plugin {{{3
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfun
" inoremap <expr> <S-Tab> STabComplete()
fun! STabComplete()
    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
        return "\<C-P>"
    else
        return "\<S-Tab>"
    endif
endfun

" Minimalist AutoComplete Pop Plugin {{{3
" set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete1()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'
        call feedkeys("\<C-X>\<C-o>", 'n')
    end
endfun

fun! AutoComplete1()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 2] !~ '\K'
        \ && getline('.')[col('.') - 1] !~ '\K'
        call feedkeys("\<C-X>\<C-o>", 'n')
    end
endfun

" Completion Auto function{{{2
function! AutoComplete2()
    " Obtiene la palabra en la posición del cursor
    let current_word = matchstr(getline('.'), '\%'.col('.').'c\%'.col('.').'v\S*')

    " Intenta el omnicompletado
    if &omnifunc !=# '' && len(current_word) > 2
        try
            let omnifunc_result = call(eval('&omnifunc'), [current_word, ''])
            if !empty(omnifunc_result)
                call feedkeys("\<C-x>\<C-o>", 'n') " Activa el omnicompletado
                return ''
            endif
        catch /^Vim\%((\a\+)\)\=:E806/
            " Ignora el error E806, que indica que no hay autocompletado disponible
        endtry
    endif

    " Intenta con palabras clave
    let keyword_completion = []
    try
        " Aquí deberías agregar la lógica para obtener palabras clave específicas
        " Puedes usar funciones o listas según tu configuración
        " Ejemplo ficticio:
        let keyword_completion = ['keyword1', 'keyword2', 'keyword3']
    catch
        " Ignora errores al obtener palabras clave
    endtry

    if !empty(keyword_completion)
        call feedkeys(keyword_completion[0], 'n') " Inserta la primera palabra clave
        return ''
    endif

    " Intenta completar rutas
    try
        let path_completion = getcompletion(current_word, 'file')
        if !empty(path_completion)
            call feedkeys(path_completion[0], 'n') " Inserta la primera ruta
            return ''
        endif
    catch /^Vim\%((\a\+)\)\=:E806/
        " Ignora el error E806, que indica que no hay autocompletado disponible
    endtry

    " Si no hay ninguna completación, muestra el menú de autocompletado por defecto
    call feedkeys("\<C-x>\<C-o>", 'n') " Activa el autocompletado por defecto
    return ''
endfunction

" }}}
" Verdin completion option{{{2
let g:Verdin#autocompletedelay=50
set omnifunc=syntaxcomplete#Complete
set completeopt+=popup
set completeopt+=noselect
" set previewpopup=height:10,width:60
" set completeopt-=preview
set completepopup=height:10,width:60,highlight:InfoPopup
" set completeopt+=menuone,noselect,noinsert,preview
let g:vimtex_imaps_enabled=0
" let g:Verdin#autocomplete = 1
let g:Verdin#cooperativemode = 1
set spellsuggest=fast,timeout:150

let g:mucomplete#can_complete = {}
let g:mucomplete#can_complete.tex =
  \ { 'omni': { t -> t =~# g:vimtex#re#neocomplete . '$' } }
autocmd FileType vim let b:Verdin_setomnifunc = 1
autocmd FileType org setlocal omnifunc=syntaxcomplete#Complete
"   \ [ "&omnifunc:<c-x><c-o>", "&completefunc:<c-x><c-u>"]
let g:jedi#auto_close_doc=1
" let g:acp_enableOmniFunc = 1
filetype plugin on
filetype indent on
" }}}
" }}}
endif
" Use of abbreviations {{{1
inoremap <S-Space> ,,<C-]>
inoremap <C-f> <C-e><C-X><C-F>
imap <A-Space> <C-x><C-k>
" source ~/Documentos/gcmfiles
" Vimscript abbreviations {{{2
autocmd Filetype vim iabbrev <buffer> f,, function (<Right><CR><CR>endfunction<Up><Up><Left><Left>
autocmd FileType vim iabbrev <buffer> wh,, while <CR><CR>endwhile<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> if,, if <CR><CR>endif<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> for,, for <CR><CR>endfor<C-o>2k<C-o>$
autocmd FileType vim iabbrev <buffer> let,, let  = <C-o>2h


" }}}
" LaTeX abbreviations {{{2
autocmd Filetype tex iabbrev <buffer> doc,, \begin{document}<CR><CR>\end{document}
autocmd Filetype tex iabbrev <buffer> fra,, \frac{<Right>{<Left><Left>
autocmd Filetype tex iabbrev <buffer> frc,, \frac{}{}<Esc>F\2F bvexf{pF\F bvex2f{pi
autocmd Filetype tex iabbrev <buffer> eq,, $ $<C-o>2<Left>
autocmd Filetype tex iabbrev <buffer> bo,, \textbf{}<Left>
autocmd FileType tex iabbrev <buffer> biblatex,, \usepackage[backend=biber,style=apa]{biblatex}
      \<C-o>o\addbibresource{biblio.bib}
autocmd FileType tex iabbrev <buffer> up,, \usepackage{}<Left>
autocmd Filetype tex iabbrev <buffer> ita,, \textit{}<Left>
autocmd Filetype tex iabbrev <buffer> ci,, \cite{}<Left>
autocmd Filetype tex iabbrev <buffer> tc,, \textcite{}<Left>
autocmd Filetype tex iabbrev <buffer> it,, <C-o>o\item
autocmd Filetype tex iabbrev <buffer> beg,, \begin{class<Right><C-o>o<CR>\end{clas<Up><Esc>cse
autocmd Filetype tex iabbrev <buffer> start,, \documentclass{article} 
      \<CR>\usepackage[spanish,es-tabla]{babel}
      \<CR>\decimalpoint
      \<CR>\usepackage{graphicx}
      \<CR>\usepackage{amsmath}
      \<CR>\usepackage{multicols}
      \<CR>\usepackage{multirow}
      \<CR>\begin{document}
      \<CR><CR>\end{document}<up>  
autocmd Filetype tex iabbrev <buffer> usep,, \usepackage{}<Esc>4bvexf}hpi
autocmd Filetype tex iabbrev <buffer> begi,, <Esc>bvexi\begin{}<C-o>F{<C-o>p<Right><CR><CR>\end{}<C-o>F{<C-o>p<Up>
" html abbreviations {{{2
autocmd Filetype html iabbrev <buffer> h1,, <h1></h1><C-o>F<
autocmd Filetype html iabbrev <buffer> h2,, <h2></h2><C-o>F<
autocmd Filetype html iabbrev <buffer> h3,, <h3></h3><C-o>F<
autocmd Filetype html iabbrev <buffer> h4,, <h4></h4><C-o>F<
autocmd Filetype html iabbrev <buffer> h5,, <h5></h5><C-o>F<
autocmd Filetype html iabbrev <buffer> h6,, <h6></h6><C-o>F<
autocmd Filetype html iabbrev <buffer> strong,, <strong></strong><C-o>F<
autocmd Filetype html iabbrev <buffer> head,, <head></head><C-o>F<
autocmd FileType html iabbrev <buffer> img,, <img src="" alt="alias" width="500" height="600"><Esc>F<3w<Right><Right>i
autocmd Filetype html iabbrev <buffer> !DOCTYPE, <!DOCTYPE>  </!DOCTYPE><C-o>F<
autocmd Filetype html iabbrev <buffer> html,, <html></html><C-o>F<
autocmd Filetype html iabbrev <buffer> head,, <head></head><C-o>F<
autocmd Filetype html iabbrev <buffer> title,, <title></title><C-o>F<
autocmd Filetype html iabbrev <buffer> body,, <body></body><C-o>F<
autocmd Filetype html iabbrev <buffer> p,, <p></p><C-o>F<
autocmd Filetype html iabbrev <buffer> a,, <a></a><C-o>F<
autocmd Filetype html iabbrev <buffer> img,, <img></img><C-o>F<
autocmd Filetype html iabbrev <buffer> ul,, <ul></ul><C-o>F<
autocmd Filetype html iabbrev <buffer> ol,, <ol></ol><C-o>F<
autocmd Filetype html iabbrev <buffer> li,, <li></li><C-o>F<
autocmd Filetype html iabbrev <buffer> div,, <div></div><C-o>F<
autocmd Filetype html iabbrev <buffer> span,, <span></span><C-o>F<
autocmd Filetype html iabbrev <buffer> br,, <br></br><C-o>F<
autocmd Filetype html iabbrev <buffer> hr,, <hr></hr><C-o>F<
autocmd Filetype html iabbrev <buffer> strong,, <strong></strong><C-o>F<
autocmd Filetype html iabbrev <buffer> em,, <em></em><C-o>F<
autocmd Filetype html iabbrev <buffer> blockquote,, <blockquote></blockquote><C-o>F<
autocmd Filetype html iabbrev <buffer> cite,, <cite></cite><C-o>F<
autocmd Filetype html iabbrev <buffer> code,, <code></code><C-o>F<
autocmd Filetype html iabbrev <buffer> pre,, <pre></pre><C-o>F<
autocmd Filetype html iabbrev <buffer> form,, <form></form><C-o>F<
autocmd Filetype html iabbrev <buffer> input,,      <input></input><C-o>F<
autocmd Filetype html iabbrev <buffer> textarea,, <textarea></textarea><C-o>F<
autocmd Filetype html iabbrev <buffer> select,, <select></select><C-o>F<
autocmd Filetype html iabbrev <buffer> option,, <option></option><C-o>F<
autocmd Filetype html iabbrev <buffer> button,, <button></button><C-o>F<
autocmd Filetype html iabbrev <buffer> label,, <label></label><C-o>F<
autocmd Filetype html iabbrev <buffer> iframe,, <iframe></iframe><C-o>F<
autocmd Filetype html iabbrev <buffer> table,, <table></table><C-o>F<
autocmd Filetype html iabbrev <buffer> tr, <tr></tr><C-o>F<
autocmd Filetype html iabbrev <buffer> th, <th></th><C-o>F<
autocmd Filetype html iabbrev <buffer> td, <td></td><C-o>F<
autocmd Filetype html iabbrev <buffer> thead,, <thead></thead><C-o>F<
autocmd Filetype html iabbrev <buffer> tbody,, <tbody></tbody><C-o>F<
autocmd Filetype html iabbrev <buffer> tfoot,, <tfoot></tfoot><C-o>F<
autocmd Filetype html iabbrev <buffer> abbr,, <abbr></abbr><C-o>F<
autocmd Filetype html iabbrev <buffer> address,, <address></address><C-o>F<
autocmd Filetype html iabbrev <buffer> meta,, <meta></meta><C-o>F<
" }}}
" Python abbreviations {{{2


autocmd Filetype python iabbrev <buffer> match,, match :<CR>#cases<cr>case :<C-o>2k<Left>
autocmd Filetype python iabbrev <buffer> case,, <CR><BS>case :<Left>
autocmd Filetype python iabbrev <buffer> for,, for element in list:<CR>#code
autocmd Filetype python iabbrev <buffer> if,, if :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> elif,, elif :<CR>#code<up><left>
autocmd Filetype python iabbrev <buffer> whi,, while :<CR>#code<up><End><Left>
autocmd Filetype python iabbrev <buffer> pr,, print()<left>
autocmd Filetype python iabbrev <buffer> def,, def ():<CR>#code<CR>pass<C-o>2k<C-o>2h


" Orgmode abbreviations {{{2

autocmd Filetype org iabbrev <buffer> h1,, * 
autocmd Filetype org iabbrev <buffer> h2,, ** 
autocmd Filetype org iabbrev <buffer> h3,, *** 
autocmd Filetype org iabbrev <buffer> h4,, **** 
autocmd Filetype org iabbrev <buffer> h5,, ***** 
autocmd Filetype org iabbrev <buffer> h6,, ****** 
autocmd Filetype org iabbrev <buffer> cb,, <C-o>o- [ <Right> 
autocmd Filetype org iabbrev <buffer> it,, <C-o>o- 
autocmd Filetype org iabbrev <buffer> stk,, ++<Left>
autocmd Filetype org iabbrev <buffer> ita,, //<Left>
autocmd Filetype org iabbrev <buffer> bo,, **<Left>
autocmd Filetype org iabbrev <buffer> und,, __<Left>
autocmd Filetype org iabbrev <buffer> ct,, [cite:<Left>@@
autocmd Filetype org iabbrev <buffer> tc,, [cite/t:<Left>@@

" }}}
