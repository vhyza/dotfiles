echo "  → Installing Homebrew..."

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
brew doctor

echo "  → Go to http://connect.apple.com download and install console tools..."
open "http://connect.apple.com"
sh read -p "    → Press [enter] when finished..."

brew install git
brew install z

# Rbenv

brew install rbenv
brew install ruby-build
brew install readline
exec $SHELL
rbenv install 2.0.0-p247
