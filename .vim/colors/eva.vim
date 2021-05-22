" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2013 May 24

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "eva"

hi Normal       ctermfg=7
hi Comment      ctermfg=3 cterm=bold
hi String       ctermfg=2 cterm=bold
hi Identifier   ctermfg=4 cterm=bold
hi Statement    ctermfg=5 cterm=bold
hi PreProc      ctermfg=6 cterm=bold
hi Type         ctermfg=2 cterm=bold
hi StorageClass ctermfg=5 cterm=bold
hi StatusLine   ctermbg=0 cterm=bold
hi StatusLineNC ctermbg=0 cterm=NONE
hi ErrorMsg     ctermbg=4
hi VertSplit    ctermbg=0 ctermfg=0
hi TabLine      cterm=NONE ctermbg=NONE
hi TabLineFill  cterm=NONE
hi TabLineSel   ctermfg=3 cterm=bold
hi WildMenu     cterm=bold ctermfg=3 ctermbg=NONE
hi LineNr       ctermfg=5 cterm=bold
