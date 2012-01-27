Install reattach for tmux system copy/paste
----------------
formula_url=https://raw.github.com/phinze/homebrew/tmux-macosx-pasteboard/Library/Formula/reattach-to-user-namespace.rb
brew install $formula_url --wrap-pbcopy-and-pbpaste

after installing commandT, it needs to be built
```
  cd ~/.dotfiles/vim/bundle/Command-T
  rake make

brews
-----
```
  brew install vim (alternate brew)
  brew install ctags

install gems into 1.9.3@global
------------
```
  rvm use 1.9.3@global
  gem install bundler
  gem install tmuxinator
  gem install coffeetags
  gem install ~/Downloads/ruby-debug-base19-0.11.26.gem ~/Downloads/linecache19-0.5.13.gem -- --with-ruby-include=$rvm_path/src/ruby-1.9.3-p0/

install PCKeyboard Hack
map caps lock to ctrl

* Remove old max osx ctags
```
  sudo mv /usr/bin/ctags /usr/bin/ctags_orig

coffee tags
-----------
```
  coffeetags -R -f TAGS

rvm and vim
-----------
You're using zsh on OS X, aren't you? Move that stupid /etc/zshenv to /etc/zshrc.
```
  sudo mv /etc/zshenv /etc/zshrc

