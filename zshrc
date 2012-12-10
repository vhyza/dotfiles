ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem autojump osx rails3 redis-cli rvm sublime vagrant)

export PATH="/usr/local/bin:$HOME/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
