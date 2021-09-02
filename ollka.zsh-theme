PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%}%n@)%m %{$fg[yellow]%}%(!.%1~.%~) $(git_prompt_info)$fg[green]$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} $(git_remote_status)"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}|%{$fg[red]%}✗%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}|%{$fg[green]%}✔%{$reset_color%}]"
