autoload -U select-word-style

select-word-style bash
bindkey '^X^E' edit-command-line

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="s -w -n"
export VISUAL="s -w -n"

unsetopt correct_all
setopt nonomatch

compinit
