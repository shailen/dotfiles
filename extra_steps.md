Install reattach to user namespace for tmux boot. (makes pbcopy and pbpaste work).

formula_url=https://raw.github.com/phinze/homebrew/tmux-macosx-pasteboard/Library/Formula/reattach-to-user-namespace.rb
brew install $formula_url --wrap-pbcopy-and-pbpaste

install mercurial

compile vim with ruby

install tmuxinator

install PCKeyboard Hack
map caps lock to ctrl

Remove old max osx ctags
sudo mv /usr/bin/ctags /usr/bin/ctags_orig

coffee tags
gem install coffeetags
coffeetags -R -f TAGS
