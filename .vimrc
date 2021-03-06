set nocompatible
" brew install mercurial
" brew install vim
" cd ~ && mkdir ~/.vim && touch ~/.vim/.vimrc && ln -s ~/.vim/.vimrc
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall
" brew install tmux
" sudo gem install tmuxinator
" brew install ack
" brew install ag

" \ig = tab guides
" \\cc = in insert mode comment toggle
" <tab> = autocomplete
" :Yanks = view yank history
" [y or ]y = yank history
" p = paste after
" P = paste before
" \cf = formatted paste
" m = cut
" :Ack [options] {pattern} [{directories}]
" When in Ack, type q to close

" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
"Plugin 'terryma/vim-smooth-scroll'
Plugin 'ervandew/supertab'
"Plugin 'vim-scripts/Rename2'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'tpope/vim-git'
Plugin 'pangloss/vim-javascript'
Plugin 'mmalecki/vim-node.js'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'tpope/vim-markdown'
Plugin 'timcharper/textile.vim'
Plugin 'vim-scripts/csv.vim'
Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'nono/jquery.vim'
"Plugin 'briancollins/vim-jst'
"Plugin 'groenewege/vim-less'
"Plugin 'wavded/vim-stylus'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-rails'
"Plugin 'skwp/vim-rspec'
"Plugin 'tpope/vim-cucumber'
"Plugin 'fatih/vim-go'
"Plugin 'tpope/vim-haml'
"Plugin 'github.com/ajf/puppet-vim'
"Plugin 'bdd/vim-scala'
"Plugin 'vim-scripts/Arduino-syntax-file'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" BASIC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set ruler          " show line and column number
syntax enable
set encoding=utf-8
set visualbell     " shut vim up
set noerrorbells
set history=1000
set autoread
"set clipboard=unnamedplus
set clipboard^=autoselect


" EDITING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
set showmatch      " Show matching brackets
set matchtime=5    " bracket blinking
set showcmd        " show incomplete commands in lower right hand corner
set showmode
set hidden         " current buffer can be put to the background without writing to disk


" FOLDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=manual
set foldnestmax=10
set nofoldenable


" WHITESPACE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set smarttab     " smarter tab levels
"set nowrap       " don't wrap lines
set wrap
set textwidth=0
set shiftwidth=4 " autoindent is 2 spaces
set softtabstop=4
set tabstop=4    " a tab is two spaces
set expandtab    " use spaces
set backspace=indent,eol,start " backspace through everything
set list
set listchars=""          " reset listchars
set listchars=tab:‣\      " display tabs with a sign
set listchars+=trail:·    " display trailing whitespaces with a dot
set listchars+=extends:»  " right wrap
set listchars+=precedes:« " left wrap


" SEARCH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch   " highlight searches
set incsearch  " incremental searching
set ignorecase " searches are case insensitive
set smartcase  " unless there is one capital letter


" WILD
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.out,*.obj,*.class
set wildignore+=*.swp,*~,._*
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=.git,.svn
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*/vendor/assets/**
set wildignore+=*/vendor/rails/**
set wildignore+=*/vendor/cache/**
set wildignore+=*/vendor/bundle/**
set wildignore+=*/vendor/submodules/**
set wildignore+=*/vendor/plugins/**
set wildignore+=*/vendor/gems/**
set wildignore+=*/.bundle/**
set wildignore+=*.gem
set wildignore+=*/log/**
set wildignore+=*/tmp/**
set wildignore+=*/_vendor/**


" BACKUP AND SWAP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set nobackup
set nowb


" UNDO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


" COLORS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_visibility="high"
set background=dark
silent! colorscheme solarized

let g:indent_guides_color_change_percent = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=NONE


" FILETYPES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://raw.github.com/carlhuda/janus/master/janus/vim/core/before/plugin/filetypes.vim
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction
filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)
" In Makefiles, use real tabs, not tabs expanded to spaces
au FileType make set noexpandtab
" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
" to tab highlight for go
au FileType go set nolist textwidth=0
" clean trailing spaces
au BufWritePre * kz|:%s/\s\+$//e|'z
" Remember last location in file, but not for commit messages.
" see :help last-position-jump
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif
au BufNewFile,BufRead *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()
au BufNewFile,BufRead *.json set ft=javascript

au BufNewFile,BufRead *.ctp set filetype=php

"au FileType html let g:formatprg_args_expr_html .= '." -indent attributes 0"'


"------------------------------------------------------------------------------
if has("statusline") && !&cp
  set laststatus=2
  set noequalalways
endif
"------------------------------------------------------------------------------


" ACK VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg="ag --nogroup --nocolor --column"
" https://github.com/carlhuda/janus/blob/master/janus/vim/tools/janus/after/plugin/syntastic.vim
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=2


" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
let g:netrw_liststyle=3
augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()
" If the parameter is a directory, cd into it
function! s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)
  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif
  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif
  if directory
    NERDTree
    wincmd p
    bd
  endif
  if explicitDirectory
    wincmd p
  endif
endfunction
" NERDTree utility function
function! s:UpdateNERDTree(...)
  let stay = 0
  if(exists("a:1"))
    let stay = a:1
  end
  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
   endif
  endif
endfunction


" RELOAD
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
"autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview


" KEY MAPPING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default mapping, <leader>n
autocmd VimEnter * silent! lcd %:p:h
map <C-c> <ESC>

map <A-c> "+y

"let mapleader=","
" much more natural cursor movement when wrapping lines are present
map j gj
map k gk
map <Down> gj
map <Up> gk
" ctrl-p
map <C-t> :CtrlP<CR>
imap <C-t> <ESC>:CtrlP<CR>
map <C-p> :CtrlP<CR>
imap <C-p> <ESC>:CtrlP<CR>
" unimpaired
" Bubble single lines
nmap <C-k> [e
nmap <C-j> ]e
" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv
" nerd tree
map <leader>n :NERDTreeToggle<CR>
" nerd commenter
map <leader>/ <plug>NERDCommenterToggle<CR>

let g:EasyMotion_leader_key = '<Leader>'

" EASY CLIP
"""""""""""""""""""""""""""""""""""""""""""""""""
" :Yanks for a list of yanks
" ctrl+c for copy
" cmd+v for paste
nmap <leader>cf <plug>EasyClipToggleFormattedPaste
imap <c-v> <plug>EasyClipInsertModePaste
cmap <c-v> <plug>EasyClipCommandModePaste
let g:EasyClipAlwaysMoveCursorToEndOfPaste = 1
let g:EasyClipAutoFormat = 1



"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>
"set scrolloff=100