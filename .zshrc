if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export LANG=en_US.utf8
export ZSH="$HOME/.oh-my-zsh"
export zshrc="$HOME/.zshrc"
export GPG_TTY=$(tty)

ZSH_THEME="xiong-chiamiov"

# Case-insensitive completion
CASE_SENSITIVE="false"

# Hyphen-sensitive completion.
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 30

# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract direnv copyfile)

source $ZSH/oh-my-zsh.sh

#
# User configuration
#

export EDITOR='nvim'
alias vim=$EDITOR

#
# Aliases
#

alias cls="clear"
alias gac="git add .; git commit"
alias gc="git commit"
alias ls="exa"
alias l="exa -alh"
alias ll="exa -a"

#
# Autorun
#

if [ -f /usr/bin/qinfo ]; then
    qinfo
fi
