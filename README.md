#Getting Started

###Prerequisites

  * $ brew install tmux _(tmux)_
  * $ brew install macvim --override-system-vim
  * $ gem install tmuxinator _(tmuxinator)_
  * [Nerdtree it up](https://github.com/scrooloose/nerdtree)
  * [Install iTerm](http://www.iterm2.com/downloads/stable/iTerm2_v2_0.zip)
  * [Oh-My-Zsh is always fun](https://github.com/robbyrussell/oh-my-zsh)

###Some light reading
  * [Seamlessly Navigate Vim and tmux Splits](https://robots.thoughtbot.com/seamlessly-navigate-vim-and-tmux-splits)
  * [vim + tmux: A Perfect Match](https://teamgaslight.com/blog/vim-plus-tmux-a-perfect-match)
  * [tmuxinator](https://github.com/tmuxinator/tmuxinator)
  * [Tmux and Vim: the perfect combination](http://tilvim.com/2014/07/30/tmux-and-vim.html)
  * [Build an IDE with tmux and vim](http://alexyoung.org/2011/12/19/build-an-ide-with-tmux-and-vim/)
  * [VimAwesome mods/plugs](http://vimawesome.com/)
  
###Clone my Repo
  * Clone it after installing the prereqs. It should lif in your user's root($ cd ~) in a dot folder ".vim"
  * Symlink outside of .vim:  
    * .tmuxinator
	* .tmux.conf
	* .vimrc
  * Edit .tmuxinator/dev.yml to suit your needs

###New Session
  * After everything is setup(digits=x: $ mux dev
  * You can close out of iTerm, reopen it and you should be where you left off
  * Clean session: $ kill sessions -t dev

###Cool stuffs and tippies
  * In iterm prefs, there should be under profiles, a whole lot of color schemes to choose from. Sometimes, when you first open iTerm, you have to open a new window a couple of times to get your color scheme. Don't know why.
  * Hold down the option key to select text to copy. Only really works nicely on one line(copies garbage on multi-lines)
  * Good cheat sheet images for wallpapers:  
    * [VIM](https://cdn.shopify.com/s/files/1/0165/4168/files/digital-preview-letter.png)
	* [VIM}(http://linux.wxs.ro/wp-content/uploads/2011/09/vim-cheatsheet.png)
	* [TMUX](http://www.clintoncurry.net/wp-content/uploads/2013/11/tmux-cheatsheet.png)
    * [TMUX](http://tim.gremalm.se/wp-content/uploads/2013/10/Cheat-Sheet-tmux.png)
	* [NerdTree](http://www.cheatography.com/storage/thumb/stepk_vim-nerdtree.600.jpg)
