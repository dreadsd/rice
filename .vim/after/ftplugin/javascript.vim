setlocal expandtab shiftwidth=2 softtabstop=2

inoremap <buffer> " '
inoremap <buffer> ' "

let b:undo_ftplugin =
            \ "setl expandtab< shiftwidth< softtabstop< | imapclear"
