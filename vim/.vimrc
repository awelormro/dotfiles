" vim: set fdm=marker:
" Welcome to my vimrc!
" penkejaka
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
" Completion settings
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
