ZSH=$HOME/.oh-my-zsh
ZSH_THEME="terminalparty"
#DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem knife autojump rails3 redis-cli vagrant)

export PATH="/usr/local/bin:$HOME/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# z - alternative to autojump
. `brew --prefix`/etc/profile.d/z.sh