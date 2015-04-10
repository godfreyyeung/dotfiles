set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervande/supertab'
Plugin 'mru.vim'
Plugin 'roman/golden-ratio'
Plugin 'Yggdroot/indentLine'

call vundle#end()

filetype plugin indent on

set background=dark

syntax on

set expandtab
set tabstop=3
set shiftwidth=3


imap sd <ESC>
map sdf :w<CR>

autocmd FileType c setlocal foldmethod=syntax
autocmd FileType cpp setlocal foldmethod=syntax
highlight Folded ctermbg=black

set fileformat=unix

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:sytastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'W>'
let g:syntastic_auto_jump = 2
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_clang_check_config_file = '~/.vim_clang_check_flags'

"let g:syntastic_c_oclint_args = '-R ~/.vim/oclintRules -rc LONG_VARIABLE_NAME=30 -rc LONG_LINE=120 -rc NCSS_METHOD=40 -I/usr/lib/clang/3.6.0/include'

map [ :lprevious<CR>
map ] :lnext<CR>

let NERDCommentWholeLinesInVMode=1

let g:NERDCustomDelimiters = {
   \ 'c': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
   \ 'cpp': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' } }

let MRU_Max_Entries = 20
command Mru MRU


