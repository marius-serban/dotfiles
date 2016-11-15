# Oh my zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER=marius
plugins=(git)
source $ZSH/oh-my-zsh.sh
unsetopt share_history

# Github's command line tool 'hub'
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# dotfiles repository support
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
