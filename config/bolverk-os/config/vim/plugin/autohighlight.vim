highlight CursorAutoHighlight term=underline cterm=underline gui=underline

let s:current = 0

function! s:clear()
    if (s:current > 0)
        call matchdelete(s:current)
        let s:current = 0
    endif
endfunction

function! s:highlight()
    call s:clear()
    let word = expand('<cword>')
    if (word != '')
        let s:current = matchadd('CursorAutoHighlight', '\V\<'.escape(word, '\').'\>')
    endif
endfunction

if !exists('autocommands_loaded')
    let autocommands_loaded = 1
    augroup autohighlight
            au!
            au CursorHold * call s:highlight()
            au BufLeave * call s:clear()
            au BufEnter * call s:highlight()
    augroup end
endif
