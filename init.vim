set title

set expandtab
set shiftwidth=4
set softtabstop=4

set ignorecase
set smartcase

set number relativenumber

set nowrap
set scrolloff=1
set hidden

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.


set path+=**
set wildignore+=**/env/**


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


cmap w!! w !sudo tee > /dev/null %

let mapleader=' '

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <leader>/ :nohlsearch<CR>

nnoremap <S-Tab> za


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')

Plug 'tmsvg/pear-tree'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'semanser/vim-outdated-plugins'

call plug#end()


let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1


lua require("ts")

if has('folding')
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set foldlevelstart=1
endif


set completeopt=menuone,noinsert
let g:completion_confirm_key = "\<C-y>"
lua require("lsp")


set termguicolors
set background=dark
colorscheme gruvbox8


let g:outdated_plugins_silent_mode = 1


let g:loaded_python_provider = 0
let g:python3_host_prog = '/home/prashanth/.pyenv/versions/neovim3/bin/python'
