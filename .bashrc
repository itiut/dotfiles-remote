# language
LANG=en_US.UTF-8

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
alias cp="cp --interactive"
alias mv="mv --interactive"
alias rm="rm --interactive"

# prevent tty from stopping
stty stop undef
