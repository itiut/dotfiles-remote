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

# ignored files on completion
export FIGNORE="$FIGNORE:DS_Store"

# host-specific
if [ -f "$HOME/.bashrc.$(hostname -s)" ]; then
    source "$HOME/.bashrc.$(hostname -s)"
fi

# host-private
if [ -f "$HOME/.bashrc.private" ]; then
    source "$HOME/.bashrc.private"
fi

# aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# prevent tty from stopping
stty stop undef
