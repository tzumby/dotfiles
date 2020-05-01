syntax on

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
Plugin 'rakr/vim-one'
Plugin 'troydm/zoomwintab.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'google/vim-jsonnet'
Plugin 'leafgarland/typescript-vim'
Plugin 'janko-m/vim-test'
Plugin 'posva/vim-vue'
Plugin 'mhinz/vim-mix-format'
Plugin 'cespare/vim-toml'
Plugin 'brooth/far.vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim/killersheep'

call vundle#end()
filetype plugin indent on

let mapleader = ","
let NERDTreeIgnore = ['node_modules']
let g:rspec_command = "!bin/rspec {spec}"
let g:airline_theme='deus'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|_build|dep)|(\.(swp|ico|git|svn))$'
let g:mix_format_on_save = 1

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set relativenumber!
set number!
set t_Co=256
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

nmap <F5> :CtrlPClearCache<CR>
nmap <F3> :w<CR>:!ruby %<CR>
nmap <F4> :w<CR>:!python %<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <F1> :setlocal number!<cr>
nnoremap <F2> :setlocal relativenumber!<cr>

map <leader>f :CtrlPClearCache<cr>\|:CtrlP<cr>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
