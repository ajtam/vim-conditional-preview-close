function! PreviewWindowCheck() abort
    for nr in range(1, winnr('$'))
        if getwinvar(nr, "&pvw") == 1
            return ":pclose\<CR>"
        endif
    endfor
    return "q"
endfun

nnoremap <expr> q PreviewWindowCheck()
