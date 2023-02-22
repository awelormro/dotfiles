

function! GPT1()
  let prompt = input("Enter chatgpt prompt: ")
    let output = system("chatgpt '" . prompt . "'")
    echo "\n" . output
    if confirm("Write output at cursor position? (Y/n)", "&Yes\n&No") == 1
      call feedkeys("i")
      call feedkeys(output)
    endif
endfunction
