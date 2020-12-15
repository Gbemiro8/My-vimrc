set rnu
set nowrap
set nocompatible
set autoindent
set incsearch "enable incremental searching.

inoremap <F10> <Esc>

" changes the colour of the tilde ~ to match the background
highlight EndOfBuffer ctermfg=black ctermbg=black

call plug#begin('~/.vim/plugged')
"the plug folder is located in -> ~/.vim/plugged/

Plug 'morhetz/gruvbox'
Plug 'git@github.com:Valloric/YouCompleteMe.git' " check github link for instructions to install
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
set background=dark
highlight Normal ctermbg=NONE

"NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"navigate between splits for vim
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" :source % -> to compile vimrc
