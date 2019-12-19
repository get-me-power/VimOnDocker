set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
call plug#end()

"---------setting vim-airline-----------"
set laststatus=2
set ttimeoutlen=10

if &t_Co != 256
  set t_Co=256
endif

set nobackup
set noswapfile
set sh=bash

if !has('nvim')
  set backspace=indent,eol,start
endif

if exists(':FZF')
  nnoremap <Leader>f :FZF<CR>
endif

if executable('ctags')
  set tags=./tags;
endif

augroup MyFileTypeEvent
  autocmd!
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
