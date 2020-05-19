set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)

" Eanble class foldings
Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

" Auto Complete
Plugin 'ycm-core/YouCompleteMe'

" syntax checking
Plugin 'vim-syntastic/syntastic'

" Flake 8
Plugin 'nvie/vim-flake8'

" Added a status bar to show git branch
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set encoding=utf-8
set nu

set expandtab ts=4 sw=4 ai
set incsearch
set hlsearch
set ruler
set pastetoggle=<F3>

" for pymode
"

let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_python = 'python3'
let python_highlight_all=1



"split navigations between window splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" hide line number
nnoremap <F2>:set nonumber!<CR>:set foldcolumn=0<CR>


let g:SimpylFold_docstring_preview = 1
set foldmethod=indent
set foldlevel=99


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set rtp+=/home/vagrant/.local/lib/python3.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

syntax on
:color desert
