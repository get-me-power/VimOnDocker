set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/gina.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

"---------setting vim-airline-----------"
set laststatus=2
set ttimeoutlen=10

if &t_Co != 256
  set t_Co=256
endif

set nobackup
set noswapfile
set incsearch
set hlsearch
set sh=bash

if !has('nvim')
  set backspace=indent,eol,start
endif

nnoremap <ESC><ESC> :noh<CR>

if exists(':FZF')
  nnoremap <Space>f :FZF<CR>
endif

if executable('ctags')
  set tags=./tags;
endif

augroup MyFileTypeEvent
  autocmd!
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
