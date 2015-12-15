" brew install mercurial
" brew install vim
" cd ~ && mkdir ~/.vim && touch ~/.vim/.vimrc && ln -s ~/.vim/.vimrc
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall
" brew install tmux
" sudo gem install tmuxinator
" brew install ack
" brew install ag

set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'gmarik/Vundle.vim'
"Bundle 'christoomey/vim-tmux-navigator'
"Bundle 'tpope/vim-surround'
"Plugin 'scrooloose/syntastic'
"Plugin 'pangloss/vim-javascript'

"set number        " Show line numbers
" syntax enable     " Use syntax highlighting
" set background=dark
" let g:solarized_termcolors = 256
" colorscheme solarized

"call vundle#end()
filetype plugin indent on

set nocompatible " be iMproved, required
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
filetype off " required
inoremap jk <ESC>
let mapleader = ","

"set mouse control on all modes
set mouse=a

"set tabs n such
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
"set tabstop=2
set number
filetype indent on
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


set encoding=utf-8 "
setlocal spell spelllang=en_us

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

let g:netrw_liststyle=3
let NERDTreeShowHidden=1

call pathogen#infect()
call pathogen#helptags()

augroup reload_vimrc " {
		autocmd!
		autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" :set laststatus=2
" %{fugitive#statusline()}

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

