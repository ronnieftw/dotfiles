# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
export PROMPT='%n@%m:%1~ %F{green}$(parse_git_branch)%f $ '
alias ls="ls -GFh"
