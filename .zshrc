# Homebrew
export PATH="/usr/local/bin:$PATH"

# Github's command line tool 'hub'
eval "$(hub alias -s)"
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# dotfiles repository support
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
