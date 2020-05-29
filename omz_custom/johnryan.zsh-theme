check_conda_env() {
    if [ ! -z "$CONDA_DEFAULT_ENV" ]; then
        printf -- "%s" "(`basename $CONDA_DEFAULT_ENV`) "
    else
        printf -- "%s" ""
    fi
}

# Symbol based on $? value
PROMPT='%(?:%{$fg_bold[green]%}☨:%{$fg_bold[red]%}♅) '
# Add conda environment
PROMPT+='%{$fg_bold[magenta]%}$(check_conda_env)'
# Add current directory
PROMPT+='%{$fg[cyan]%}%c%{$reset_color%}'
# Add git branch
PROMPT+='$(git_prompt_info)%{$fg[cyan]%}:%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚒"
ZSH_THEME_GIT_PROMPT_CLEAN=""
