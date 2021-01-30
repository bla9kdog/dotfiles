" General

set encoding=UTF-8
set clipboard +=unnamedplus
set nu
set fillchars+=vert:\
set mouse=a
set noruler
set scrolloff=3
colorscheme default

set completeopt+=noinsert
set completeopt-=preview
set wildmode=list:longest

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
Plug 'Shougo/deoplete.nvim'
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
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Deoplete

let g:deoplete#enable_at_startup = 1

" NERDTree

map <F3> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
highlight! link NERDTreeFlags NERDTreeDir

" Airline

let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
let g:airline#extensions#whitespace#enabled = 0
let g:webdevicons_enable = 1
