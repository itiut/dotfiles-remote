# language
LANG=en_US.UTF-8

# path
if [ -d $HOME/bin ]; then
    export PATH=$HOME/bin:$PATH
fi

# history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000

# prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# host-specific
if [ -f "$HOME/.bashrc.$(hostname)" ]; then
    source "$HOME/.bashrc.$(hostname)"
fi

# aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# prevent tty from stopping
stty stop undef
