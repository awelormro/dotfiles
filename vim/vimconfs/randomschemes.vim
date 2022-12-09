
function RandomColorSchemeMyPicks()
    let mypicks = ["nightfox","nordfox",  
          \ "dracula", "base16-bespin", "base16-apathy", 
          \ "base16-apprentice", "base16-ashes", 
          \ "base16-atelier-cave", 
          \ "base16-atelier-dune", "base16-atelier-forest", 
          \ "base16-atelier-heath", "base16-atelier-lakeside",
          \ "base16-atelier-seaside", "base16-atelier-sulphurpool",
          \ "base16-ayu-dark", "base16-ayu-mirage",
          \ "base16-blueforest", "base16-catppuccin", "base16-chalk",
          \ "base16-classic-dark", "base16-colors", "base16-black-metal-burzum",
          \ "base16-black-metal-nile", "base16-black-metal",
          \ "base16-danqing", "base16-darktooth",
          \ "base16-darkviolet", "base16-decaf", "base16-default-dark",
          \ "base16-eighties", "base16-equilibrium-dark",
          \ "base16-equilibrium-gray-dark", "base16-espresso", "base16-eva",
          \ "base16-everforest", "base16-framer", "base16-gigavolt",
          \ "base16-google-dark", "base16-gotham", "base16-grayscale-dark",
          \ "base16-gruvbox-dark-hard", "base16-gruvbox-dark-medium",
          \ "base16-gruvbox-dark-medium", "base16-hardcore", "base16-harmonic-dark",
          \ "base16-heetch", "base16-helios", "base16-hopscotch",
          \ "base16-horizon-dark", "base16-humanoid-dark", "base16-ia-dark",
          \ "base16-icy", "base16-irblack", "base16-isotope", "base16-kanagawa",
          \ "base16-kimber", "base16-lime", "base16-marrakesh", "base16-materia",
          \ "base16-material", "base16-material-darker",
          \ "base16-mellow-purple", "base16-mocha", "base16-monokai", "base16-nord",
          \ "base16-nova", "base16-ocean", "base16-oceanicnext", "base16-onedark",
          \ "base16-pandora", "base16-papercolor-dark", "base16-paraiso", "base16-pasque",
          \ "base16-phd", "base16-pop", "base16-porple",
          \ "base16-primer-dark", "base16-primer-dark-dimmed", "base16-purpledream",
          \ "base16-railscasts", "base16-rebecca", "base16-rose-pine",
          \ "base16-sandcastle", "base16-schemer-dark", "base16-seti",
          \ "base16-solarflare", "base16-solarized-dark"
          \]
    let mypick = mypicks[localtime() % len(mypicks)]
    echom mypick
    execute 'colo' mypick
endfunction

command NewColor call RandomColorSchemeMyPicks()

let s:use_gui = exists('g:neovide') || has('gui_running') || (has('termguicolors') && &termguicolors)
if (s:use_gui)
    call RandomColorSchemeMyPicks()
endif



hi NonText guifg=bg
