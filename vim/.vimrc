" vim: set fdm=marker:
" Welcome to my vimrc!
"   __     __  ______  __       __  _______    ______  
"  /  |   /  |/      |/  \     /  |/       \  /      \
"  $$ |   $$ |$$$$$$/ $$  \   /$$ |$$$$$$$  |/$$$$$$  |
"  $$ |   $$ |  $$ |  $$$  \ /$$$ |$$ |__$$ |$$ |  $$/
"  $$  \ /$$/   $$ |  $$$$  /$$$$ |$$    $$< $$ |
"   $$  /$$/    $$ |  $$ $$ $$/$$ |$$$$$$$  |$$ |   __
"    $$ $$/    _$$ |_ $$ |$$$/ $$ |$$ |  $$ |$$ \__/  |
"     $$$/    / $$   |$$ | $/  $$ |$$ |  $$ |$$    $$/
"      $/     $$$$$$/ $$/      $$/ $$/   $$/  $$$$$$/
" TODO List {{{1
" FIXME: Agregar funcionalidades de los íconos
" TODO: Agregar plugins para diccionarios con las nerdfonts
" FIXME: Agregar fzf-emoj
" }}}
" Main vim files {{{1
" Vim standards to not need several functions

source ~/.vimconf/globalconfs.vim
" Plugin calling
source ~/.vimconf/plugins.vim
" Configuration for appearance post configuration
source ~/.vimconf/appearanceconfs.vim
" Auto commands used for certain filetypes
source ~/.vimconf/autocmds.vim
" Ctags creation for some filetypes
source ~/.vimconf/ctagsconfs.vim
" " Completion settings {{{2
" if !exists('g:ycm_semantic_triggers')
"     let g:ycm_semantic_triggers = {}
"   endif
" au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" " let g:ycm_use_ultisnips_completer = 1
" set completeopt+=popup
" let g:UltiSnipsExpandTrigger="<CR>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" " Snippets directory
" let g:UltiSnipsSnippetDirectories=["~/Plantillas/abusnips"]


" " Custom snippets path
" let g:UltiSnipsSnippetsDir = "~/Plantillas/abusnips"


" " }}}
source ~/.vimconf/completion.vim
" File Explorer configurations
source ~/.vimconf/filexplorers.vim
" Fzf custom commands
source ~/.vimconf/fzfcustoms.vim
" Keymappings 
source ~/.vimconf/mappings.vim
" Settings for status line and tab line
source ~/.vimconf/plugairline.vim
" Post plugin settings for files
source ~/.vimconf/plugappearanceconfs.vim
" Random colorscheme creator
source ~/.vimconf/randomcolors.vim
" Splash screen settings
source ~/.vimconf/startifysettings.vim
" Vimtex configuration file
source ~/.vimconf/texconfigs.vim
" Zettelkasten configuration file
source ~/.vimconf/zettelkastenconfigs.vim

" Auxiliar files {{{1
" Files for test some apps
" source $HOME/prubasorg.vim
" }}}
  
