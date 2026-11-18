# fzf key bindings and completion.
source <(fzf --bash)

parse_git_branch() {
  git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF="\[\033[0m\]"
COLOR_GIT="\[\033[38;5;51m\]"
PS1="\[\033[01;32m\]\u@\h${COLOR_DEF} \[\033[01;34m\]\w${COLOR_DEF} ${COLOR_GIT}\$(parse_git_branch)${COLOR_DEF} \$ "
