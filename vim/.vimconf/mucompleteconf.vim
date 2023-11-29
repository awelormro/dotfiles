
let g:mucomplete#enable_auto_at_startup=1
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
