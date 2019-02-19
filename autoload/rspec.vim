let s:default_term_size = "10x0"
let s:executable = get(g:, 'rspec_executable', 'rspec')

function rspec#currentLine()
  let l:usr_termwinsize = &termwinsize
  execute("set termwinsize=" . get(g:, "rspec_termiwinsize", s:default_term_size))
  execute("terminal " . s:executable . " " . expand("%") . ":" . line("."))
  execute("set termwinsize=" . l:usr_termwinsize)
endfunction

function rspec#currentFile()
  let l:usr_termwinsize = &termwinsize
  execute("set termwinsize=" . get(g:, "rspec_termiwinsize", s:default_term_size))
  execute("terminal " . s:executable . " " . expand("%"))
  execute("set termwinsize=" . l:usr_termwinsize)
endfunction
