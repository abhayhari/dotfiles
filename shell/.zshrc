# fzf key bindings and completion.
source <(fzf --zsh)

parse_git_branch() {
  git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF=$'%f'
COLOR_USER=$'%F{10}'
COLOR_PWD=$'%F{12}'
COLOR_GIT=$'%F{51}'
setopt PROMPT_SUBST
PROMPT='${COLOR_USER}%n@%m${COLOR_DEF} ${COLOR_PWD}%1~${COLOR_DEF} ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} %# '
