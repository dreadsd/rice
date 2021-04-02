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

hi Normal       ctermfg=6
hi Comment      ctermfg=3   cterm=bold
hi String       ctermfg=2   cterm=bold
hi Identifier   ctermfg=135 cterm=bold
hi Statement    ctermfg=4   cterm=bold
hi PreProc      ctermfg=4   cterm=bold
hi Type         ctermfg=217
hi StatusLine   cterm=bold
hi StatusLineNC cterm=NONE
hi ErrorMsg     ctermbg=4
hi VertSplit    ctermbg=0 ctermfg=0
hi TabLine      cterm=NONE ctermbg=NONE
hi TabLineFill  cterm=NONE
hi WildMenu     cterm=bold ctermfg=3 ctermbg=NONE
