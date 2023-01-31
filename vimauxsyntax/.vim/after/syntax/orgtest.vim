
" Syntax for Org files

syntax match orgHeading /^\*.*/
highlight link orgHeading Todo
syntax match orgEmphasis /\/.*\//
highlight link orgEmphasis Emphasis
syntax match orgUnderline /_.*_/
highlight link orgUnderline Underline
syntax match orgBold /\+.*\+/
highlight link orgBold Bold
syntax match orgCode /~.*~/
highlight link orgCode Code
syntax match orgBlockquote /^[ ]+\>.*/
highlight link orgBlockquote Blockquote
