# --- HISTORY CONFIGURATION ---
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# --- OPTIONS (setopt) ---
setopt APPEND_HISTORY       # Append history to the file rather than overwriting it
setopt SHARE_HISTORY        # Share history across all active shell sessions
setopt HIST_IGNORE_DUPS     # Do not record an entry if it was the same as the previous one
setopt HIST_IGNORE_ALL_DUPS # Delete old duplicate entries when saving history
setopt HIST_IGNORE_SPACE    # Preface commands with a space to keep it out of history (for secrets)
setopt HIST_REDUCE_BLANKS   # Remove superfluous blanks from each command line



# Git branch in prompt.
parse_git_branch() {
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) && echo " ($branch)"
}

setopt PROMPT_SUBST
export PROMPT='%n@%m:%1~%F{green}$(parse_git_branch)%f $ '


# Aliases
alias ls="ls -GFh"
alias ll="ls -la"
alias ..="cd .."
alias grep="grep --color=auto"

# Key bindings (bash-like navigation)
bindkey "^[[A" history-search-backward   # up arrow searches history
bindkey "^[[B" history-search-forward    # down arrow searches history
bindkey "^[^[[C" forward-word            # option+right jumps word
bindkey "^[^[[D" backward-word           # option+left jumps word

# Colorize man pages
export LESS_TERMCAP_mb=$'\e[1;31m'    # solarized red
export LESS_TERMCAP_md=$'\e[1;36m'    # solarized cyan  → section headings
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'   # solarized yellow → status bar
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'    # solarized green  → flags/underlines
