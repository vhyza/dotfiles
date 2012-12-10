echo "  → Installing Homebrew..."

`which ruby` -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew doctor

echo "  → Go to http://connect.apple.com download and install console tools..."
open "http://connect.apple.com"
sh read -p "    → Press [enter] when finished..."

brew install git
brew install autojump

# Rbenv

brew install rbenv
exec $SHELL
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 1.9.3-p327
