colorscheme murphy
syntax on

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'a.vim'

call vundle#end()

filetype plugin indent on

set background=dark

syntax on

set expandtab
set tabstop=4
set shiftwidth=4

set laststatus=2
set scrolloff=2

set splitbelow
set splitright

set mouse=a

inoremap jk <ESC>
vnoremap jk <ESC>

set fileformat=unix

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:airline_theme='wombat'

map [ :lprevious<CR>
map ] :lnext<CR>
map <C-f> <Leader><Leader>s
map <C-w><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

