" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'christoomey/vim-tmux-navigator'
Plug 'alvan/vim-closetag'
call plug#end()

" cursor customization
let &t_SI .= "\e[6 q" " insert mode
let &t_SR .= "\e[4 q" " replace mode
let &t_EI .= "\e[2 q" " normal mode (else)

" mappings
noremap <C-f> :Goyo<CR>

" options
set scrolloff=999
set sidescrolloff=999
set nowrapscan
set nowrap
set laststatus=2
set number relativenumber

" highlight colors
augroup crystalcolors
        autocmd!
        autocmd ColorScheme * highlight StatusLine cterm=bold
                          \ | highlight StatusLineNC cterm=NONE
                          \ | highlight ErrorMsg ctermbg=4
                          \ | highlight VertSplit ctermbg=0 ctermfg=0
augroup END
colorscheme ron

" remove trailing whitespaces and newlines
augroup removetrailing
        autocmd!
        autocmd BufWritePre * execute "normal ma" | %s/\s\+$//e | %s/\n\+\%$//e | execute "normal `a"
augroup END

" fast escape
set ttimeoutlen=10
augroup fastescape
        autocmd!
        autocmd InsertEnter * set timeoutlen=0
        autocmd InsertLeave * set timeoutlen=1000
augroup END

" groff mom configuration
augroup groffmom
        autocmd!
        autocmd BufRead,BufNewFile *.mom set filetype=groff
        autocmd BufWritePost *.mom !(preconv "%" | pdfmom) >"%:r.pdf"
augroup END
