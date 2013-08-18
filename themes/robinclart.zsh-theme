directory_prompt_name () {
  echo "in %{$fg[yellow]%}%c%{$reset_color%}"
}

rbenv_prompt_local () {
  rbenv_local_version=$(rbenv local 2> /dev/null) || return
  echo " using %{$fg[blue]%}${rbenv_local_version}%{$reset_color%}"
}

all_prompt_info () {
  echo "$(directory_prompt_name)$(git_prompt_info)$(rbenv_prompt_local)"
}

PROMPT=$'$(all_prompt_info) \$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
