iabbrev bbd \*[BD]\*[PREV]<Esc>7hi
iabbrev iit \*[IT]\*[PREV]<Esc>7hi
iabbrev bdi \*[BDI]\*[PREV]<Esc>7hi
iabbrev sup \*[SUP]\*[SUPX]<Esc>7hi
iabbrev h1 .HEADING 1 ""<Esc>i
iabbrev h2 .HEADING 2 ""<Esc>i
iabbrev h3 .HEADING 3 ""<Esc>i

iabbrev ccode .FLOAT FORCE INDENT 5m<CR>.CODE<CR>.LINENUMBER_FAMILY C<CR>.LINENUMBER_FONT B<CR>.NUMBER_LINES 1 1 1<CR><CR>.NUMBER_LINES OFF<CR>.CODE OFF<CR>.FLOAT OFF<Esc>3ki
iabbrev nlist .LIST DIGIT .\*[PREV] \*[BD]<CR>.PAD_LIST_DIGITS LEFT<CR><CR>.LIST OFF<Esc>ki
let b:undo_ftplugin = "iabclear"
