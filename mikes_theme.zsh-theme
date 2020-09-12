# Simple theme based on my old zsh settings.

SMILEY=":)%{$reset_color%}"
FROWNY="%{$fg[red]%}:(%{$reset_color%}"

function get_host {
	echo '@'$HOST
}
function _select () {
    if [ $? = 0 ]; then 
        echo ":)%{$reset_color%}"

    else 
        echo  "%{$fg[red]%}:(%{$reset_color%}"
    fi
}

PROMPT='$(_select)'
RPROMPT='%{$fg[magenta]%}%~%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}@%{$fg[yellow]%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
