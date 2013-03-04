# Enable autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

autoload select-word-style

select-word-style bash
bindkey '^X^E' edit-command-line

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\e[A" history-beginning-search-backward-end  # cursor up
bindkey "\e[B" history-beginning-search-forward-end   # cursor down

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="s -w -n"
export VISUAL="s -w -n"

unsetopt correct_all
setopt nonomatch

compinit -i
