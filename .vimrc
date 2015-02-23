set nocompatible filetype off set rtp+=~/.vim/bundle/Vundle.vim call vundle#begin() PASTE Plugin 'gmarik/Vundle.vim' Bundle 'christoomey/vim-tmux-navigator' 
--------------------------------------------------------------------------- call vundle#end() filetype plugin indent on set nocompatible " be iMproved, required nnoremap <c-j> <c-w>j nnoremap <c-k> 
<c-w>k nnoremap <c-h> <c-w>h nnoremap <c-l> <c-w>l filetype off " required inoremap jk <ESC> let mapleader = ","

filetype plugin indent on syntax on set encoding=utf-8 " setlocal spell spelllang=en_us " set the runtime path to include Vundle and initialize set rtp+=~/.vim/bundle/Vundle.vim call vundle#begin() " 
alternatively, pass a path where Vundle should install plugins "call vundle#begin('~/some/path/here') " let Vundle manage Vundle, required Plugin 'gmarik/Vundle.vim' " The following are examples of 
different formats supported. " Keep Plugin commands between vundle#begin/end. " plugin on GitHub repo Plugin 'tpope/vim-fugitive' " plugin from http://vim-scripts.org/vim/scripts.html Plugin 'L9' " Git 
plugin not hosted on GitHub Plugin 'git://git.wincent.com/command-t.git' " git repos on your local machine (i.e. when working on your own plugin) " Plugin 'file:///home/gmarik/path/to/plugin' " The 
sparkup vim script is in a subdirectory of this repo called vim. " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'thoughtbot/vim-rspec'

Bundle 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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




----------------------------
vim +PluginInstall +qall
touch ~/.tmux.conf
nano ~/.tmux.conf

TMUX.CONF
--------------------------------------------------------------------------
^^^^^^^^^^

# 256 colors for vim
set -g default-terminal "screen-256color"

# Cycle panes with C-b C-b
unbind ^B
bind ^B select-pane -t :.+

# Reload config with a key
bind-key r source-file ~/.tmux.conf \; display "Config reloaded!"

# Mouse works as expected
set -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

# Scrolling works as expected
set -g terminal-overrides 'xterm*:smcup@:rmcup@'

# Use the system clipboard
set-option -g default-command "reattach-to-user-namespace -l bash"

# Clear the pane and it's history
bind -n C-k send-keys C-l \; clear-history

# smart pane switching with awareness of vim splits
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-l) || tmux select-pane -R"
bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys 'C-\\') || tmux select-pane -l"

# C-l is taken over by vim style pane navigation
bind C-l send-keys 'C-l'

# Use vim keybindings in copy mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"




----------------------------------------------------------------
brew install reattach-to-user-namespace
gem install tmuxinator
















iTerm: http://www.iterm2.com/downloads/stable/iTerm2_v2_0.zip
--------------------------------------------------------------------------


Create a session
The first thing you’ll want to do after installing tmux is create a session.
--------------------------------------------------------------------------
$ tmux new -s gaslight-blog



Detach session
You can detach from the session at any point by pressing:
--------------------------------------------------------------------------
Ctrl-b d



Attach session
You can attach to the session from the command line with:
--------------------------------------------------------------------------
$ tmux attach -t gaslight-blog




Split horizontally
You no longer have to be dependent on your terminal application to create split panes.
--------------------------------------------------------------------------
Ctrl-b %




Split vertically
--------------------------------------------------------------------------
Ctrl-b "




Pane Navigation
Keybinding	Action
--------------------------------------------------------------------------
Ctrl-b ↑	        Up
Ctrl-b ↓	        Down
Ctrl-b ←	        Left
Ctrl-b →	        Right
ator
