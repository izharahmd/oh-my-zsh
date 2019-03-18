function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

function battery_izhar() {
    i=$(pmset -g batt | grep -o "[0-9]*%")
    echo $i
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{%b$fg[yellow]%}[$(battery_izhar)%]%  %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
