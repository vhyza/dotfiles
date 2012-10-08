if [[ "$USER" = "root" ]] || [[ "$HOME" = "/root" ]]
 then
  USERCOLOR="%B%{$fg[red]%}"
  alias hs="cd /home/${HOME}"
else
  USERCOLOR="%B%{$fg[white]%}"
fi

RETURN_CODE="%B%{$fg[yellow]%}%(0?..[%?%\] )%{$reset_color%}"
JOBS="%B%{$fg[yellow]%}%(1j.[%j] .)"
REVISIONS="%(1v.%F{yellow}%1v%f.)"
PROMPT="$RETURN_CODE%{$reset_color%}$USERCOLOR%#%b%{$reset_color%} "
RPROMPT=" $JOBS%B$USERCOLOR%n@%m%{$reset_color%}:%{$fg[green]%}%~%b%{$reset_color%}$REVISIONS"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
