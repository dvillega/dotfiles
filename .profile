# The best editor
export VISUAL=vim
export EDITOR="$VISUAL"
alias vi=vim
set -o vi

alias ll='ls -lah'

# The best pager
PAGER=less
export PAGER

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

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

alias prettyjson='python -m json.tool'



# PyVenv alias
alias activate='source ./env/bin/activate'

export PYSPARK_PYTHON=python3
export PYSPARK_DRIVER_PYTHON=python3

# Docker Version Manager
[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

alias kpaul="curl 'http://www.kpauls.com/lunch-menu/' | grep 'h3 ' -A 1| cut -d '>' -f 2 | cut -d '<' -f 1|less"

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

# Git completion and prompt
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1='`if [ $? = 0 ]; then echo -e '🌮🥃🤓'; else echo -e '🔥🚒🔥'; fi`  \[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\] $(__git_ps1 " (%s)") \[\033[01;34m\]$\[\033[00m\] '

# Add hub for git
alias git=hub
alias vsc='open -a "Visual Studio Code" .'
