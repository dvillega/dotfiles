# The best editor
export VISUAL=vim
export EDITOR="$VISUAL"
alias vi=vim
set -o vi

alias ll='ls -lah'

# The best pager
PAGER=less
export PAGER

# Setup golang
export GOPATH=$HOME/src/go
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin


# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

# PyVenv alias
alias activate='source ./env/bin/activate'

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

#if [ "$TERM" != "linux" ]; then
#        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

alias chill='spotify play uri spotify:user:1249660564:playlist:56aDI84ZQj3yGsBysnQ5Tk'

# Add hub for git
alias git=hub
alias vsc='open -a "Visual Studio Code" .'
