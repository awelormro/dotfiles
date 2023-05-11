" vim: set fdm=marker:
"
"             _           
"  _ ____   _(_)_ __ ___  
" | '_ \ \ / / | '_ ` _ \ 
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
"
" Plugins section {{{1
"
"     ██████╗ ██╗     ██╗   ██╗ ██████╗ ███████╗
"     ██╔══██╗██║     ██║   ██║██╔════╝ ██╔════╝
"     ██████╔╝██║     ██║   ██║██║  ███╗███████╗
"     ██╔═══╝ ██║     ██║   ██║██║   ██║╚════██║
"     ██║     ███████╗╚██████╔╝╚██████╔╝███████║
"     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝
"
" Start vim-plug addon
call plug#begin() 
" Completion, correction and creation {{{2
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:abuftabline_show=2
let g:abuftabline_separators=1
let g:abuftabline_separators_char= ''
let g:abuftabline_numbers=2
Plug 'dpelle/vim-LanguageTool'
Plug 'vim-scripts/SyntaxRange'
Plug 'dense-analysis/ale'
let g:ale_sign_error = '☣'
let g:ale_sign_warning = '⚠'

" Lorem ipsum script 
Plug 'vim-scripts/loremipsum'
" Snippet interaction
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
" Jedi completion for python
Plug 'davidhalter/jedi-vim'
" Emmet integration for vim
Plug 'mattn/emmet-vim'


" Tab build and forked {{{2
" Plug '~/Plantillas/abuftabline'
Plug 'icalvin102/svelte-nerdfonts', { 'rtp': 'vim' }

" Personal wiki file
" Plug 'vimwiki/vimwiki', {'branch':'dev'}
" Plug 'tools-life/taskwiki'
" Plug 'vimwiki/vimwiki'
" Plug 'tools-life/taskwiki'

" Tags management {{{2
Plug 'ludovicchabant/vim-gutentags'
Plug 'yegappan/taglist'
Plug 'vim-scripts/Tagbar'
" }}}
" Performance, look and feel plugins {{{2
" Resize for windows when multiple splits are opened
Plug 'camspiers/lens.vim'
" Rainbow brackets
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
" Move faster on vim Screen
Plug 'easymotion/vim-easymotion'
" Statusline and Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Icons support
Plug 'ryanoasis/vim-devicons'
" Github Interaction
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Splashscreen for vim
Plug 'mhinz/vim-startify', {'branch':'center'}
" Zen mode concentration stats
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Comment sections
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'


" Support for table and align management
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/vim-easy-align'
" ASCII diagrams creations
Plug 'vim-scripts/DrawIt'

" Create a minimap for the file with Rust 
" Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}



" Orgmode attempt config {{{2
Plug '~/Plantillas/vim-abuorgmode'
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'suliveevil/utl.vim'
Plug 'inkarkat/vim-SyntaxRange'
" }}}
" FZF integration {{{2
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dominickng/fzf-session.vim'



" Homemade Plugins
Plug '~/Plantillas/Toggle-settings.vim'
Plug '~/Plantillas/Todo-highlight.vim'

" Close pairs
Plug 'Raimondi/delimitMate'



" Colorschemes {{{2
" Check colorschemes 
Plug 'vim-scripts/ScrollColors'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'EdenEast/nightfox.nvim'
Plug 'EvitanRelta/vim-colorschemes'
" Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sickill/vim-monokai'
Plug 'cocopon/iceberg.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'mhartington/oceanic-next'
Plug 'junegunn/seoul256.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/space-vim-dark'
Plug 'folke/tokyonight.nvim'
Plug 'haishanh/night-owl.vim'
Plug 'sainnhe/edge'
Plug 'ayu-theme/ayu-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'blueshirts/darcula'
Plug 'w0ng/vim-hybrid'
Plug 'jacoborus/tender.vim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/sonokai'
Plug 'cocopon/iceberg.vim'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'NTBBloodbath/doom-one.vim'
Plug 'jaredgorski/fogbell.vim'


" Misc Configs {{{2
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'Konfekt/FastFold'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'pakutoma/toggle-terminal'
" Presentation tool to make console presentations
Plug 'sotte/presenting.vim'
" Colorize CSS colors 
Plug 'ap/vim-css-color'
" Bullet journal home made
Plug '~/Plantillas/bujovim'

" Syntax highlighters {{{2

Plug 'mboughaba/i3config.vim'
Plug 'farfanoide/vim-kivy'
" Pandoc and RMarkdown syntax
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
" Markdown syntax plugin
Plug 'tpope/vim-markdown'
" Vimscript filetype syntax
Plug 'machakann/vim-Verdin'
" Clojure support
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'chrisbra/csv.vim'
Plug 'sambazley/vim-csveval'
Plug 'azabiong/vim-highlighter'
Plug 'LeafCage/flashcards.vim'
Plug 'archernar/vim-flashcard'
Plug 'EdwinWenink/vim-quiz'
Plug 'guyon/quiz-vim'

" Latex file edition {{{2
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
let g:tex_fold_additional_envs=['questions','choices','table']
" Sync vim with the pdf reader Evince
Plug 'peterbjorgensen/sved'
" }}}
" Homemade plugins {{{2
Plug '~/Plantillas/zettelvim'
Plug '~/Plantillas/pythonpluginexample'
" }}}
" Chatgpt usage {{{2
Plug '0xStabby/chatgpt-vim'
Plug 'mattn/vim-chatgpt'

" File manager created and its plugins {{{2
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
let g:fern#renderer = "nerdfont"
" }}}

call plug#end()

" Globals section {{{1

"    ████████   ██          ██                 ██
"   ██░░░░░░██ ░██         ░██                ░██
"  ██      ░░  ░██  ██████ ░██       ██████   ░██  ██████
" ░██          ░██ ██░░░░██░██████  ░░░░░░██  ░██ ██░░░░
" ░██    █████ ░██░██   ░██░██░░░██  ███████  ░██░░█████
" ░░██  ░░░░██ ░██░██   ░██░██  ░██ ██░░░░██  ░██ ░░░░░██
"  ░░████████  ███░░██████ ░██████ ░░████████ ███ ██████
"   ░░░░░░░░  ░░░  ░░░░░░  ░░░░░    ░░░░░░░░ ░░░ ░░░░░░

set cursorline
let g:orgmode_journal_path='~/Abuwiki/Diary/'
set number
set relativenumber
colorscheme dracula
" colorscheme base16-atelier-seaside

set encoding=utf-8
set t_Co=256 
" Disable compatibility with vi which can cause unexpected issues.

set nocompatible
set mouse=a
set mousemodel=popup
set mousehide
set clipboard=unnamedplus
set updatetime=200
set spell
set spelllang=es,en,pt
let &t_ut='' 
set fillchars+=vert:\┃
" set fillchars+=vert:\║
" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

set noshowmode
" set notimeout
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set termguicolors
if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  else
    set termguicolors
  endif

" UTF encoding
set encoding=UTF-8

" Enable plugins and load plugin for the detected file type.
filetype plugin on


" Load an indent file for the detected file type.
filetype indent on

" Conceal cursor activated by default
set concealcursor=nc

" Highlight enable feature
syntax enable
" syntax on
set hidden

" Add numbers to the file.
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" fix cursor blind
set synmaxcol=128
syntax sync minlines=256
" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
" set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap

let g:indentLine_enabled = 1 " While searching though a file incrementally highlight matching characters as you type.
let g:indentLine_concealcursor="nc"
set incsearch

" Indent line plugin char display
let g:indentLine_char = '│'

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
"set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Wild menu shown as a popup menu
set wildoptions=pum

" Make wildmenu behave like similar to Bash completion.
set wildmode=longest:full,full


" Fzf session plugin file sessions path
let g:fzf_session_path = '/home/abu/Plantillas/session'


" Goyo enabled to toggle Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Function to toggle conceal level in case of required
function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

" Vim Table mode section

function! ToggleTableborder()
    if g:table_mode_corner == "|"
        let g:table_mode_corner="+"
    else
        g:table_mode_corner == "|"
    endif
endfunction
let g:table_mode_corner='|'

" Minimap vim config
let g:minimap_width = 10


set cursorline!
set lazyredraw
set regexpengine=1
set ttyfast
set synmaxcol=400
let g:context_nvim_no_redraw = 1
autocmd BufRead,BufNewFile *.rmd set filetype=rmarkdown
autocmd BufRead,BufNewFile *.md set filetype=markdown


" Vim markdown setup
let g:vim_markdown_conceal = 1
let g:tex_conceal = "nc"
let g:vim_markdown_math = 1


let g:vimtex_matchparen_enabled=0

" set your favorite shell
let g:toggle_terminal#command = 'zsh'

let g:vim_markdown_math = 1

" set terminal window position
" (see possible options at :help vertical)
let g:toggle_terminal#position = 'topleft'

highlight clear ALEErrorSign
highlight clear ALEWarningSign
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

function RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_ranger_current_file')
        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
        call system('rm /tmp/vim_ranger_current_file')
    endif
    redraw!
endfun

" let g:org_aggressive_conceal=1

let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/Abuwiki/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }

let g:tagbar_type_markdown = {
  \ 'ctagstype'	: 'markdown',
  \ 'kinds'		: [
    \ 'c:chapter:0:1',
    \ 's:section:0:1',
    \ 'S:subsection:0:1',
    \ 't:subsubsection:0:1',
    \ 'T:l4subsection:0:1',
    \ 'u:l5subsection:0:1',
  \ ],
  \ 'sro'			: '""',
  \ 'kind2scope'	: {
    \ 'c' : 'chapter',
    \ 's' : 'section',
    \ 'S' : 'subsection',
    \ 't' : 'subsubsection',
    \ 'T' : 'l4subsection',
  \ },
  \ 'scope2kind'	: {
    \ 'chapter' : 'c',
    \ 'section' : 's',
    \ 'subsection' : 'S',
    \ 'subsubsection' : 't',
    \ 'l4subsection' : 'T',
  \ },
\ }

let g:tagbar_type_rmarkdown = {
          \   'ctagstype':'rmd'
          \ , 'kinds':['h:header', 'c:chunk', 'f:function', 'v:variable']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header', 'c':'chunk'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/vimconfs/rmdtags.py'
          \ , 'ctagsargs': ''
          \ }
" Look and feel settings {{{1

"
"             ██╗        ██╗   ███████╗
"             ██║        ██║   ██╔════╝
"             ██║     ████████╗█████╗
"             ██║     ██╔═██╔═╝██╔══╝
"             ███████╗██████║  ██║
"             ╚══════╝╚═════╝  ╚═╝
" cosas 
" Backup colorscheme if the original can't work
" colorscheme dracula_bold
set wd=10 rdb=nodelta
syntax on
autocmd filetype org syntax on
autocmd filetype org set cursorline

" Format options to avoid nasty paste
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o


" Vim lens avoid animation
let g:lens#animate = 0
  
let g:minimap_close_filetypes=['nofile','nowrite','quickfix','terminal','prompt']
let g:minimap_close_filetypes = ['startify','fern','vim-plug','nerdtree']
let g:minimap_width=7
set conceallevel=2

hi NonText guifg=bg

let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'Tagbar', 'fern','calendar']

hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['org'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['bib'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rmd'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['Rmd'] = ''

" Completion settings {{{1

"      ██████    ███████     ██████        ████     ██ ██      ██ ██ ████     ████
"     ██░░░░██  ██░░░░░██   ██░░░░██      ░██░██   ░██░██     ░██░██░██░██   ██░██
"    ██    ░░  ██     ░░██ ██    ░░       ░██░░██  ░██░██     ░██░██░██░░██ ██ ░██
"   ░██       ░██      ░██░██        █████░██ ░░██ ░██░░██    ██ ░██░██ ░░███  ░██
"   ░██       ░██      ░██░██       ░░░░░ ░██  ░░██░██ ░░██  ██  ░██░██  ░░█   ░██
"   ░░██    ██░░██     ██ ░░██    ██      ░██   ░░████  ░░████   ░██░██   ░    ░██
"    ░░██████  ░░███████   ░░██████       ░██    ░░███   ░░██    ░██░██        ░██
"     ░░░░░░    ░░░░░░░     ░░░░░░        ░░      ░░░     ░░     ░░ ░░         ░░

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=200

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

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

" Ultisnips keys
let g:UltiSnipsExpandTrigger="<F55>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"


" Snippets directory
let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]


" Custom snippets path
let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)<CR>

" Use <C-j> for select text for visual placeholder of snippet.
vmap <Tab> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<Tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<S-Tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
" let g:coc_highlight_maximum_count=50
" let g:coc_snippet_preview_timeout = 50
"""""
" Configuración para resaltar el borde actual
highlight CocFloating guibg=black guifg=white

let g:Verdin#setomnifunc = 1
let g:Verdin#cooperativemode = 1
" Keymappings {{

 " _     _ _______ __   __ _______ _______  _____  _______
 " |____/  |______   \_/   |  |  | |_____| |_____] |______
 " |    \_ |______    |    |  |  | |     | |       ______|
 "

" Tab management
" nnoremap <Tab> :bnext\|set concealcursor=nc <CR>
" nnoremap <S-Tab> :bprev\|set concealcursor=nc<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
" New line insertions directly in insert mode
" inoremap <C-n> <C-o>o
" inoremap <C-b> <C-o>O

" Set the comma as the leader key.
let mapleader = " "
let maplocalleader = " "
" nmap <Esc> <Esc>:noh<CR><Esc>

" Type ,x to close buffer
nnoremap <silent><leader>x :bd<CR>
nnoremap ; :

" Type space-e to toggle the file explorer

" nnoremap <Space>e :Fern %:h -drawer -toggle<cr>
" nnoremap <Space>e :Fern %:h -drawer -toggle<cr>
nnoremap <Space>e :Fern . -reveal=% -drawer -toggle<cr>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <Esc> <Esc><Esc>:noh<CR>
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap gcc <leader>c<space>


" Type  <Space>sa to save all buffers
nnoremap <leader>sa  :wa<CR>

" Type ,sf to force save a buffer
nnoremap <leader>sf  :w!<CR>

nnoremap <leader>sy :syntax enable<CR>

" vim-powered terminal in split window
" map <Leader>te :term ++close<cr><C-w>J<C-w>k<C-w>7+<C-w>j
" tmap <Leader>t <c-w>:term ++close<cr>
" tmap <Leader>tq <C-\><C-n>:q!<CR>
" vim-powered terminal in new tab
" map <Leader>T :ter ++curwin<cr>
" tmap <Leader>T <c-w>:bde!  term ++close<cr>


" Press ,q to delete current split
nnoremap <leader>q :q<CR>

" Press ,fo to show recently open files with fzf
nnoremap <leader>fo :History<CR> 

" Press ,ft to show colorschemes with fzf
nnoremap <leader>ft :Colors<CR> 

" Press ,fb to show Buffer list with fzf
nnoremap <leader>fb :Buffers<CR> 

" Press fo to show recently open files with fzf
nnoremap <leader>fm :Files<CR> 

" Press ,fk to show Keymappings with fzf
nnoremap <leader>fk :Maps<CR> 

" Press ,fc to show recently open command history with fzf
nnoremap <leader>fc :Commands<CR> 

" Minimap Keymappings
" nnoremap <Leader>mt :MinimapToggle<CR>
" nnoremap <Leader>mc :MinimapClose<CR>
" nnoremap <Leader>mr :MinimapRefresh<CR> 

" Vim function to toggle virtualedit
nnoremap <Leader>ve :ToggleVirtualedit<CR> 

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

tnoremap <C-q> <C-\><C-n>:q!<CR>
" tnoremap <Esc> <C-\><C-n>

" <Leader>p{char} to move to {char}
map  <Leader>p <Plug>(easymotion-bd-f)
nmap <Leader>p <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

nnoremap <F2> :TagbarToggle<CR>


" Move to word
map  <Leader>wo <Plug>(easymotion-bd-w)
nmap <Leader>wo <Plug>(easymotion-overwin-w)

" noremap <Leader><Tab> :WikiLinkNext<CR>
" noremap <Leader><S-Tab> :WikiLinkPrev<CR>

" inoremap <expr><Cr>  pumvisible() ? "\<C-y>" : "\<Cr>"

" Goyo toggle
nnoremap <Leader>z :Goyo<CR>

" Open cheatsheets section
nnoremap <Leader>l<Leader>w :vs ~/Abuwiki/wikis/miniwikis/cheats/index.wiki \|vertical resize 55 \|set foldlevel=0<CR>
" map <C-@> to toggle
tnoremap <silent> <C-@> <C-w>:ToggleTerminal<CR>
nnoremap <silent> <C-@> :ToggleTerminal<CR>


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

" Airline settings {{{1


"       >>                    >=>
"      >>=>       >>          >=>  >>
"     >> >=>         >> >==>  >=>     >==>>==>    >==>
"    >=>  >=>    >=>  >=>     >=> >=>  >=>  >=> >>   >=>
"   >=====>>=>   >=>  >=>     >=> >=>  >=>  >=> >>===>>=>
"  >=>      >=>  >=>  >=>     >=> >=>  >=>  >=> >>
" >=>        >=> >=> >==>    >==> >=> >==>  >=>  >====>

let g:airline#extensions#tabline#enabled = 1

" Enable Vim airline powerfonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#alt_sep = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_type = 2
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#show_close_button = 0
" Enable show only the first letter of the current mode
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }

" Enables modify airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_stl_path_style = 'short'

au Bufenter *.org  AirlineRefresh

" Vimtex settings {{{1

"  ____   ____  _                _
" |_  _| |_  _|(_)              / |_
"   \ \   / /  __   _ .--..--. `| |-'.---.  _   __
"    \ \ / /  [  | [ `.-. .-. | | | / /__\\[ \ [  ]
"     \ ' /    | |  | | | | | | | |,| \__., > '  <
"      \_/    [___][___||__||__]\__/ '.__.'[__]`\_]

" Let vimtex to compile using shell-escape mode
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" Vimtex plugin per filetype
filetype plugin indent on
" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info) preps.
syntax enable

" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_viewer = 'sioyek'
" let g:vimtex_view_general_viewer = 'evince'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
let g:tex_fast=""
" Vimtex syntax conceal config, 1 is enabled, 0 is disabled

let g:vimtex_syntax_conceal = {
      \ 'accents': 1,
      \ 'ligatures': 1,
      \ 'cites': 1,
      \ 'fancy': 1,
      \ 'greek': 1,
      \ 'math_bounds': 1,
      \ 'math_delimiters': 1,
      \ 'math_fracs': 1,
      \ 'math_super_sub': 1,
      \ 'math_symbols': 1,
      \ 'sections': 1,
      \ 'styles': 1,
      \}

let g:tex_fold_additional_envs = ['eqnarray','choices','questions','tabular',] 

let g:vimtex_syntax_custom_cmds = [
      \ {'name': 'longrightarrow', 
      \ 'mathmode': 1, 'concealchar': '→'},
      \ {'name': 'question', 
      \ 'fancy':1,'concealchar': '○ ' },
      \ {'name': 'choice', 'fancy':1,'concealchar': '○' }
      \]

      " \ {'name': 'frac', 'mathmode':1,'concealchar': }
      "
"
" Command creation settings {{{1

"    _  _ __ __  _ __  _| _
"   (_ (_)||||||(_|| |(_|_>
"   

let g:bulletjournalicons=['\.', 'x', 'o','\*', '\!', '\-\-', '»', '«', '+']
" Orgmode commands experimentation {{{2
" Codesnips to add highlight Orgmode Code {{{3
function Codesnips()
  call SyntaxRange#Include('#+BEGIN_SRC html', '#+END_SRC', 'html', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC css', '#+END_SRC', 'css', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC tex', '#+END_SRC', 'tex', 'SpecialComment')
  call SyntaxRange#Include('#+BEGIN_SRC javascript', '#+END_SRC', 'javascript', 'SpecialComment')
endfunction

" let b:current_syntax = ''
" unlet b:current_syntax
" syntax include @HTML syntax/html.vim
autocmd filetype org call Codesnips()

" Ctags integration {{{3

let g:tagbar_type_org = {
      \   'ctagstype':'org'
      \ , 'kinds':['h:header']
      \ , 'sro':'&&&'
      \ , 'kind2scope':{'h':'header'}
      \ , 'sort':0
      \ , 'ctagsbin':'~/dotfiles/vim1/.vimconfigs/orgmodetags.py'
      \ , 'ctagsargs': 'default'
      \ }


" Orgmode attempt to toggle some formats {{{3

fun! Modifycheck()
  let currli=getline('.')
  echo currli
  substitute /- TODO \[ \]/- DONE \[x\]
endfun

fun! Updatenewchecks()
  let currli=getline('.')
  let listels=split(currli,' ')
  echo listels
  for element in listels
    if match(element, '\[.') != -1
      echo 'Elemento existente en ' . element
      let separatortasks = element
    endif
  endfor
  echo separatortasks
  let firtstchar=strpart(separatortasks,1,len(separatortasks)-2)
  let newstr= firtstchar 
  echo newstr
  let listsplitted=split(newstr,'/')
  echo listsplitted
  if listsplitted[0]==listsplitted[1]
    echo 'task acabado'
  endif
  substitute / \[ \] TODO/ \[X\] DONE
  substitute / \[X\] TODO/ \[X\] DONE
endf


" Orgmode table settings {{{3

autocmd filetype org let b:table_mode_corner= '+'
autocmd filetype org setlocal tabstop=3
autocmd filetype org setlocal shiftwidth=3



" Vim fastfold settings {{{2
" main Fastfold enablings {{{3
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:rst_fold_enabled = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:zsh_fold_enable = 1
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
let g:fortran_fold=1
let g:clojure_fold = 1
let g:baan_fold=1

" Python, C, C++ indent and fold methods {{{3
autocmd FileType c,cpp setlocal foldmethod=syntax
autocmd FileType org setlocal foldmethod=expr
autocmd FileType python,vim setlocal foldmethod=indent
autocmd FileType python setlocal  autoindent expandtab tabstop=4 shiftwidth=4
autocmd FileType json setlocal foldmethod=syntax

" Markdown fold method using python style
let g:vim_markdown_folding_style_pythonic = 1

" Pomodoro timer attempt {{{2

function! PomodoroTimer()
    let remaining = 25 * 60
    while remaining > 0
        echom "Pomodoro timer: " . remaining / 60 . " minutes remaining."
        let remaining -= 1
        call timer_start(1000, function('PomodoroTick'), #{remaining: remaining})
        sleep 1m
    endwhile
    echom "Pomodoro timer finished."
endfunction

function! PomodoroTick(timer_id, timer_data)
    let remaining = get(timer_data, 'remaining', 0)
    if remaining > 0
        call set(timer_data, 'remaining', remaining - 1)
    endif
endfunction

command! PomodoroTimer :call PomodoroTimer()

" FZF nerdfont picker {{{2
"

function! Fzf_glyphs()
  let s:glyphs = {
        \ 'A': '🅰️',
        \ 'B': '🅱️',
        \ 'C': '🌊',
        \ 'D': '🌵',
        \ 'E': '📧',
        \ 'F': '🎏',
        \ 'G': '🌀',
        \ 'H': '🏠',
        \ 'I': '🎐',
        \ 'J': '🎷',
        \ 'K': '🎋',
        \ 'L': '👢',
        \ 'M': 'Ⓜ️',
        \ 'N': '🎵',
        \ 'O': '🅾️',
        \ 'P': '🅿️',
        \ 'Q': '🍳',
        \ 'R': '®️',
        \ 'S': '💲',
        \ 'T': '✝️',
        \ 'U': '⛎',
        \ 'V': '✔️',
        \ 'W': '〰️',
        \ 'X': '❎',
        \ 'Y': '💹',
        \ 'Z': '💤',
        \ }
  let s:glyph = ''
  call fzf#run(fzf#wrap({
        \ 'source': keys(s:glyphs),
        \ 'sink': function('InsertGlyph1'),
        \ 'down': '40%',
        \ 'header': 'Glyphs',
        \ 'expect': ['ctrl-t', 'enter'],
        \ 'options': '--ansi -n 2.. --prompt "Select a glyph> "'
        \ }))
endfunction

function! InsertGlyph1(selected)
  let s:glyph = s:glyphs[a:selected[0]]
  execute "normal i" . s:glyph
endfunction


" Toggle indentation and syntax for file {{{2

function! Togglefoa()
  if &formatoptions== 'croql'
    setlocal textwidth=60
    setlocal formatoptions+=a
  elseif &formatoptions=='tq'
    setlocal textwidth=60
    setlocal formatoptions+=a
  else
    setlocal formatoptions-=a
  endif  
endfunction


command! ToggleFormat call Togglefoa()
nnoremap <Leader>t<Leader>l :ToggleFormat<CR> 


" Fern manager settings {{{1

"  ________  ________  _______   __    __
" |        \|        \|       \ |  \  |  \
" | $$$$$$$$| $$$$$$$$| $$$$$$$\| $$\ | $$
" | $$__    | $$__    | $$__| $$| $$$\| $$
" | $$  \   | $$  \   | $$    $$| $$$$\ $$
" | $$$$$   | $$$$$   | $$$$$$$\| $$\$$ $$
" | $$      | $$_____ | $$  | $$| $$ \$$$$
" | $$      | $$     \| $$  | $$| $$  \$$$
"  \$$       \$$$$$$$$ \$$   \$$ \$$   \$$
" 
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1
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

" Startify settings{{{1

"  ____  _             _   _  __
" / ___|| |_ __ _ _ __| |_(_)/ _|_   _
" \___ \| __/ _` | '__| __| | |_| | | |
"  ___) | || (_| | |  | |_| |  _| |_| |
" |____/ \__\__,_|_|   \__|_|_|  \__, |
"                                |___/
" Enable custom  ascii art for header.

let g:ascii=[
  \'   ______   __                             __               ',
  \'  /      \ |  \                           |  \              ',
  \' |  $$$$$$\| $$____   __    __  __     __  \$$ ______ ____  ',
  \' | $$__| $$| $$    \ |  \  |  \|  \   /  \|  \|      \    \ ',
  \' | $$    $$| $$$$$$$\| $$  | $$ \$$\ /  $$| $$| $$$$$$\$$$$\',
  \' | $$$$$$$$| $$  | $$| $$  | $$  \$$\  $$ | $$| $$ | $$ | $$',
  \' | $$  | $$| $$__/ $$| $$__/ $$   \$$ $$  | $$| $$ | $$ | $$',
  \' | $$  | $$| $$    $$ \$$    $$    \$$$   | $$| $$ | $$ | $$',
  \'  \$$   \$$ \$$$$$$$   \$$$$$$      \$     \$$ \$$  \$$  \$$',
  \ ]

let g:startify_fortune_use_unicode = 1

" Add fortunebox to the ascii art

" \ { 'type': 'bookmarks', 'header': startify#center(['    Bookmarks']) },
let g:startify_custom_header = startify#center( g:ascii + startify#fortune#boxed()  )

let g:startify_lists = [
    \ { 'type': 'commands',  'header': startify#center(['  גּ  Menu']) },
    \ ]
let g:startify_padding_left= &columns/4

" Show aviable startify commands
let g:startify_commands = [
    \ {'fo': ['   Check reciently opened files', 'History']},
    \ {'fm': ['   Show sessions','Sessions']},
    \ {'ww': ['   Open Wiki Index','e ~/Abuwiki/Orgtests/main.org' ] },
    \ {'fs': ['   File manager','call RangerExplorer()']},
    \ {'fk': ['   Show keymaps', 'Maps']},
    \ {'ft': ['   Change colorscheme','Colors'] },
    \ ]

" Show file bookmarks 
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, {'zh':'~/.zshrc'}, {'i3':'~/.config/i3/config'},{'kt':'~/.config/kitty/kitty.conf'},{'xr':'~/.Xresources'},{'tm':'~/.tmux.conf'}, {'al':'~/.config/alacritty/alacritty.yml'}]

let g:startify_enable_special = 0

let g:startify_session_dir = '/home/abu/Plantillas/session'

" Avoid use of indentline in Startify

let g:indentLine_fileTypeExclude = ['startify']
" let g:indentLine_leadingSpaceEnabled = 1

  " \ '⣿⣿⣿⣿⡿⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠛⢿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⠁⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠛⠛⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠈⣿⣿⣿⣿',
  " \ '⣿⠋⠉⠁⠀⠀⠀⠀⢴⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠈⠉⠻⣿',
  " \ '⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⠟⠁⣰⡆⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⡈⠻⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⣿',
  " \ '⣿⣦⣄⣀⣤⣶⣄⠀⠀⠀⠀⠙⢿⡿⠃⠀⡾⠃⣰⠟⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠈⢿⡀⠈⢿⡿⠋⠀⠀⠀⠀⣠⣶⣄⣀⣀⣴⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⢀⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣷⣶⣾⣿⡄⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣼⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⣀⣴⣶⣶⣄⠀⠀⠀⠀⠀⠀⣠⣴⣶⣦⣄⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⢰⣿⣿⣿⣿⣿⣷⡄⠀⠀⢀⣾⣿⣿⣿⣿⣿⣇⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⢸⣿⣿⣿⣿⣿⣿⠇⠀⠀⠘⣿⣿⣿⣿⣿⣿⡿⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⠻⠿⣿⣿⠿⠋⠀⠀⠀⠀⠘⠿⢿⣿⡿⠿⠃⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⠀⠀⠀⠀⠀⠐⢿⣿⠇⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⠛⠲⠦⣤⣤⣤⣀⣀⣤⣤⣤⠴⠖⠛⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⢸⢧⣀⠀⢰⡇⠀⠈⠉⡏⠉⠀⢸⠀⠀⢀⣼⡇⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⣟⠀⠈⠉⣾⠳⠶⠤⣤⣧⠤⠴⢾⡗⠉⠉⠀⢇⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⡿⠋⠉⠙⠻⠛⠁⠀⠀⠀⢀⡏⠑⢶⣤⡟⠀⠀⠀⠀⡇⠀⠀⠀⣷⣠⡴⠖⢻⠀⠀⠀⠀⠈⠻⠟⠋⠉⠙⢿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣷⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠛⠋⠉⠀⠀⠀⣾⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣧⣀⣀⠀⠀⠀⠀⠐⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⠀⠀⠀⠀⢀⣀⣠⣾⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⣿⣿⣿⣿⣇⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿',
  " \ '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣤⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣴⣿⣿⣿⣿⣿⣿⣿',
  " \ '',
  " \ '    ___    __                _',
  " \ '   /   |  / /_  __  ___   __(_)___ ___',
  " \ '  / /| | / __ \/ / / / | / / / __ `__ \',
  " \ ' / ___ |/ /_/ / /_/ /| |/ / / / / / / /',
  " \ '/_/  |_/_.___/\__,_/ |___/_/_/ /_/ /_/',
  
" Orgmode settings {{{1

"  $$$$$$\  $$$$$$$\   $$$$$$\
" $$  __$$\ $$  __$$\ $$  __$$\
" $$ /  $$ |$$ |  $$ |$$ /  \__|
" $$ |  $$ |$$$$$$$  |$$ |$$$$\
" $$ |  $$ |$$  __$$< $$ |\_$$ |
" $$ |  $$ |$$ |  $$ |$$ |  $$ |
"  $$$$$$  |$$ |  $$ |\$$$$$$  |
"  \______/ \__|  \__| \______/

" Zettelkasten configs
let g:zettelvim_filetype='org'
let g:zettelvim_dir='~/Abuwiki/Orgtests'
let g:zettelvim_tag_delimiter=':'

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


" Abuftabline settings {{{1

"  _         _
" |_||_    _|__|_ _ |_  |  o __  _
" | ||_)|_| |  |_(_||_) |  | | |(/_


let g:abuftabline_left_separator= ''
let g:abuftabline_right_separator= ''
let g:abuftabline_show_icon=1
let g:abuftabline_separators=1
let g:abuftabline_separators_char="|"
let g:aVerdin#setomnifunc = 1
let g:Verdin#cooperativemode = 1
set cursorline

" ┃ ║ ┊ 
" ╱ ╲

hi NonText guifg=bg
" Important Files settings {{{1

"  ██                                       ██                        ██
" ░██             ██████                   ░██                       ░██
" ░██ ██████████ ░██░░░██  ██████  ██████ ██████  ██████   ███████  ██████
" ░██░░██░░██░░██░██  ░██ ██░░░░██░░██░░█░░░██░  ░░░░░░██ ░░██░░░██░░░██░
" ░██ ░██ ░██ ░██░██████ ░██   ░██ ░██ ░   ░██    ███████  ░██  ░██  ░██
" ░██ ░██ ░██ ░██░██░░░  ░██   ░██ ░██     ░██   ██░░░░██  ░██  ░██  ░██
" ░██ ███ ░██ ░██░██     ░░██████ ░███     ░░██ ░░████████ ███  ░██  ░░██
" ░░ ░░░  ░░  ░░ ░░       ░░░░░░  ░░░       ░░   ░░░░░░░░ ░░░   ░░    ░░
"    ████ ██  ██
"   ░██░ ░░  ░██
"  ██████ ██ ░██  █████   ██████
" ░░░██░ ░██ ░██ ██░░░██ ██░░░░
"   ░██  ░██ ░██░███████░░█████
"   ░██  ░██ ░██░██░░░░  ░░░░░██
"   ░██  ░██ ███░░██████ ██████
"   ░░   ░░ ░░░  ░░░░░░ ░░░░░░


" Example 1: Find config files {{{2
let g:importantfiles = {
      \ 'Neovim file': '~/.config/nvim/init.vim',
      \ 'zsh file': '~/.zshrc',
      \ 'Alacritty terminal': '~/.config/alacritty/alacritty.yml',
      \ 'Xresources file': '~/.Xresources',
      \ 'i3 config': '~/.config/i3/config',
      \ 'Picom config': '~/.config/picom.conf',
      \ 'Tmux configs': '~/.tmux.conf',
      \ 'Vimrc file': '~/.vimrc',
      \ }

fun! Importanttranslater(args)
  execute 'let nombrecompleto= g:importantfiles["' . a:args . '"]'
  execute 'e ' . nombrecompleto
endf

command! -bang -nargs=1 Auxcommand1 call Importanttranslater(<q-args>)  
command! ImportantFiles call ImportantFilesFZF()

function! ImportantFilesFZF()
    let dict = g:importantfiles
    let list = keys(dict)
    let choice = fzf#run({
          \ 'source': list,
          \ 'window': { 'width': 0.9, 'height': 0.6 },
          \ 'sink': 'Auxcommand1'
          \})
endfunction

" Cheat sheets Finder {{{2

let g:cheats_filelist = { 
      \ "css":"css.org",
      \ "emmet":"emmet.org",
      \ "git":"git.org", 
      \ "html":"html.org",  
      \ "latex":"tex.org", 
      \ "md":"md.org",
      \ "python":"py.org",
      \ "rmarkdown" : "rmarkdown.org",
      \ "taskwarrior":"taskwarrior.org", 
      \ "vim":"vim.org", 
      \ "vim-surround":"vim-surround.org",
      \ "vimtex":"vimtex.org", 
      \ "vimwiki":"vimwiki.org", 
      \ "orgmode":"orgmode.org"
      \ }

command! -bang -nargs=1 CdGFiles call Pasarafzf(<q-args>)  
command! FindCheatsheets call FindFileInList2()

fun! Pasarafzf(args)
  execute 'let nombrecompleto= g:cheats_filelist["' . a:args . '"]'
  execute 'e ' . g:zettelvim_dir . '/' . nombrecompleto
endf

function! FindFileInList2()
  let cheats=g:cheats_filelist
  let list=keys(cheats)
  let selected = fzf#run({
        \ 'source': list,
        \ 'window': { 'width': 0.9, 'height': 0.6 },
        \ 'sink': 'CdGFiles'
        \ })
endfunction


