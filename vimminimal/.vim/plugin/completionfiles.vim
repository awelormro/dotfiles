vim9script


if exists("g:loaded_lsp")
    g:LspOptionsSet({
        autoComplete: false,
        omniComplete: true,
        bufferCompletionTimeout: 500,
    })
    # augroup lsp_omnicomplete
    #     au!
    #     au User LspAttached setl complete=o^10
    # augroup END
endif

def g:Completion_files(findstart: any, base: any): any # {{{
  if findstart
    var line = getline('.')
    var start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      start -= 1
    endwhile
    return start
  else
    # Variable declarations {{{ 
    var res = []
    var i = col('.') - 1
    var line = getline('.')
    var len_line = len(line)
    var space_applied = 0
    var str_end = col('.') - 1
    var str_find = ''
    # }}}
    while i > 0
      # Check the loop {{{
      if line[i : str_end] =~ '^\~/'
        str_find = line[i : str_end]
        break
      elseif line[i : str_end] =~ '^\["'
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ '^\s\['
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ '^\s('
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ '^\s{'
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ '^("'
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ '^{"'
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ "^\['"
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ "^('"
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ "^\s\s"
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ "^\s\s"
        str_find = line[i : str_end][2 :]
        break
      elseif line[i : str_end] =~ "^\w\s"
        str_find = line[i : str_end][2 :]
        break
      else
        i -= 1
        continue
      endif
      # }}}
    endwhile
    # Check if is an empty value and add all the solutions {{{
    if i == 0
      str_find = line[ : str_end]
    endif
    # }}}
    # Generate the loop to return {{{
    var contents = getcompletion('e ' .. str_find, 'cmdline')
    b:checker_str = str_find
    for content in contents
      var newword = substitute(content[len(str_find) - 1 : ], ' ', '\\ ', 'g')
      add(res, { 'word': newword, 'info': 'file: ' .. content})
    endfor
    # }}}
    return res
  endif
enddef # }}}


# set completefuzzycollect=files
# insert mode completion
set completeopt=menuone,popup,noselect,fuzzy
# limit each source to have maximum number of completion items with ^N
set complete=o^10,FComplete_Abbrevs^4,.^7,w^5,b^5,u^3,kspell^8
set complete+=FCompletion_files

# When autocompletion should be triggered per each filetype
# specified
var instrigger = {
    vim: '\v%(\k|\k-\>|[gvbls]:)$',
    c: '\v%(\k|\k\.|\k-\>)$',
    python: '\v%(\k|\k\.)$',
    gdscript: '\v%(\k|\k\.)$',
    ruby: '\v%(\k|\k\.)$',
    javascript: '\v%(\k|\k\.)$',
}
def InsComplete()
    var trigger = get(instrigger, &ft, '\k$')
    if getcharstr(1) == '' && getline('.')->strpart(0, col('.') - 1) =~ trigger
        SkipTextChangedI()
        feedkeys("\<c-n>", "n")
    endif
enddef

def SkipTextChangedI(): string
    # Suppress next event caused by <c-e> (or <c-n> when no matches found)
    set eventignore+=TextChangedI
    timer_start(1, (_) => {
        set eventignore-=TextChangedI
    })
    return ''
enddef

inoremap <silent> <c-e> <scriptcmd>SkipTextChangedI()<cr><c-e>
inoremap <silent> <c-y> <scriptcmd>SkipTextChangedI()<cr><c-y>
inoremap <silent><expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

augroup inscomplete
    au!
    autocmd TextChangedI * InsComplete()
augroup END

# Command line completion 

set wildmode=noselect:lastused,full
set wildmenu wildoptions=pum,fuzzy
set wildcharm=<C-@>

def CmdComplete()
    var [cmdline, curpos] = [getcmdline(), getcmdpos()]
    var trigger = '\v%(\w|[*/:.-=]|\s)$'
    var exclude = '\v^(\d+|.*s[/,#].*)$'
    if getchar(1, {number: true}) == 0  # Typehead is empty (no more pasted input)
            && !wildmenumode() && curpos == cmdline->len() + 1
            && cmdline =~ trigger && cmdline !~ exclude # Reduce noise
        feedkeys("\<C-@>", "ti")
        SkipCmdlineChanged()  # Suppress redundant completion attempts
        # Remove <C-@> that get inserted when no items are available
        timer_start(0, (_) => getcmdline()->substitute('\%x00', '', 'g')->setcmdline())
    endif
enddef

def SkipCmdlineChanged(key = ''): string
    set eventignore+=CmdlineChanged
    timer_start(0, (_) => execute('set eventignore-=CmdlineChanged'))
    return key != '' ? ((pumvisible() ? "\<c-e>" : '') .. key) : ''
enddef

cnoremap <expr> <up> SkipCmdlineChanged("\<up>")
cnoremap <expr> <down> SkipCmdlineChanged("\<down>")

augroup cmdcomplete
    au!
    autocmd CmdlineChanged : CmdComplete()
    autocmd CmdlineEnter : set belloff+=error
    autocmd CmdlineLeave : set belloff-=error
augroup END

inoremap <F10> <C-x><C-f>
