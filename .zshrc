# homebrew
PATH="/opt/homebrew/bin:$PATH"

# Oh my zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER=marius
plugins=(git)
source $ZSH/oh-my-zsh.sh
unset HISTFILE

# dotfiles repository support
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
