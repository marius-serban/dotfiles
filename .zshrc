# Oh my zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER=marius
plugins=(git)
source $ZSH/oh-my-zsh.sh
unset HISTFILE

# Github's command line tool 'hub'
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# dotfiles repository support
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"

# fastlane tools
export PATH="$HOME/.fastlane/bin:$PATH"

# use gpg key for ssh
if [ -f "${HOME}/.gpg-agent-info" ]; then
     . "${HOME}/.gpg-agent-info"
fi

