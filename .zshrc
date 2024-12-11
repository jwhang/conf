# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Customize prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Aliases
alias code='cd ~/code/2024'
alias iwyu='include-what-you-use'
alias python='python3'


# Tell Fzf to use ripgrep
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# Fzf-tab
autoload -U compinit; compinit
source ~/code/2024/fzf-tab/fzf-tab.plugin.zsh

# Esc to enter vi mode in commandline
set -o vi
