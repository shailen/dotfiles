Install reattach to user namespace for tmux boot. (makes pbcopy and pbpaste work).

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

install gems
------------
```
  rvm use 1.9.3@global
  gem install tmuxinator
  gem install coffeetags

install PCKeyboard Hack
map caps lock to ctrl

* Remove old max osx ctags
```
  sudo mv /usr/bin/ctags /usr/bin/ctags_orig

coffee tags
coffeetags -R -f TAGS
