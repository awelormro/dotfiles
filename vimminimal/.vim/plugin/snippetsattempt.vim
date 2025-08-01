function! Complete_Abbrevs(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    " find months matching with "a:base"
    let res = []
    if !exists('b:abbrevs_snip')
      let all_maps = maplist(1)
      let i = 0
      let len_maps = len(all_maps)
      let b:abbrevs_snip = []
      while i < len_maps
        if all_maps[i]['mode'] == 'i'
          let map_insert = {'word': all_maps[i]['lhs'], 'info': all_maps[i]['rhs'], 'kind': 'A'}
          call add(b:abbrevs_snip, map_insert)
        endif
        let i = i + 1
      endwhile
    endif
    let all_pos = b:abbrevs_snip
    for m in all_pos
      if m['word'] =~ '^' .. a:base
        call add(res, m)
      endif
    endfor
    return res
  endif
endfunction

augroup ContinueFileCompletion
  autocmd!
  autocmd CompleteDonePre * if complete_info()['mode'] ==# 'files' | call feedkeys("\<C-x>\<C-f>", 'n') | endif
augroup END
