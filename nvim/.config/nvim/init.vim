" General

set encoding=UTF-8
set clipboard +=unnamedplus
set nu
set fillchars+=vert:\
set mouse=a
set noruler
set scrolloff=3
colorscheme default

" Spacing

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Vim-plug initialization

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Plugins

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'valloric/MatchTagAlways'
Plug 'myusuf3/numbers.vim'
Plug 'ap/vim-css-color'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" CoC

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Fzf

map <C-f> <Esc><Esc>:Files!<CR>

" NERDTree

map <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
highlight! link NERDTreeFlags NERDTreeDir

" Airline

let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline#extensions#whitespace#enabled = 0
