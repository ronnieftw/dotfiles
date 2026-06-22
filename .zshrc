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
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
PROMPT='%n@%m:%1~%F{green} ${vcs_info_msg_0_}%f $ '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

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
