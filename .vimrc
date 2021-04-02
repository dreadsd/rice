" plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'alvan/vim-closetag'
call plug#end()

" mappings
noremap <C-f> :Goyo<CR>

" options
set scrolloff=999 sidescrolloff=999
set nowrapscan nowrap
set laststatus=2
set number relativenumber
set title
set wildmenu wildignorecase

" highlight colors
colorscheme eva

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
