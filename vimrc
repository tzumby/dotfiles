set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'elixir-editors/vim-elixir'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'

call vundle#end()
filetype plugin indent on

let mapleader = ","
let NERDTreeIgnore = ['node_modules']
let g:rspec_command = "!bin/rspec {spec}"

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber
set t_Co=256

nmap <F5> :CtrlPClearCache<CR>
nmap <F3> :w<CR>:!ruby %<CR>
nmap <F4> :w<CR>:!python %<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <F1> :setlocal number!<cr>
nnoremap <F2> :setlocal relativenumber!<cr>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

