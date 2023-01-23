
vim.opt.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,globals,winsize,winpos,terminal'

vim.g.vimwiki_list={
  {path='~/Abuwiki/Abuwiki/',path_html='~/Abuwiki/Abuwiki_html/', automatic_nested_syntaxes = 1},
  {path='~/Abuwiki/private/',path_html='~/Abuwiki/private_html', automatic_nested_syntaxes = 1},
  {path='~/Abuwiki/gcmwiki',path_html='~/Abuwiki/gcmwiki_html', automatic_nested_syntaxes = 1},
}

vim.g.vimwiki_key_mappings = {
   all_maps = 1,
   global= 1,
   headers= 1,
   text_objs= 1,
   table_format= 0,
   table_mappings= 0,
   lists= 1,
   links= 0,
   html= 1,
   mouse= 1,
}

vim.g.fastfold_savehook = 1
vim.g.fastfold_fold_command_suffixes =  {'x','X','a','A','o','O','c','C'}
vim.g.fastfold_fold_movement_commands = {']z', '[z', 'zj', 'zk'}
vim.g.markdown_folding = 1
vim.g.rst_fold_enabled = 1
vim.g.tex_fold_enabled = 1
vim.g.vimsyn_folding = 'af'
vim.g.xml_syntax_folding = 1
vim.g.javaScript_fold = 1
vim.g.sh_fold_enabled= 7
vim.g.zsh_fold_enable = 1
vim.g.ruby_fold = 1
vim.g.perl_fold = 1
vim.g.perl_fold_blocks = 1
vim.g.r_syntax_folding = 1
vim.g.rust_fold = 1
vim.g.php_folding = 1
vim.g.fortran_fold=1
vim.g.clojure_fold = 1
vim.g.baan_fold=1
