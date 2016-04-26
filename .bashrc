# language
LANG=en_US.UTF-8

# path
export HOME1=/export/home1/$USER
export VMLINUX_PATH=/usr/lib/debug/lib/modules/$(uname -r)/vmlinux

if [ -d /opt/pgsql/bin ]; then export PATH=/opt/pgsql/bin:$PATH; fi
if [ -d $HOME/bin ]; then export PATH=$HOME/bin:$PATH; fi
if [ -d $HOME1/bin ]; then export PATH=$HOME1/bin:$PATH; fi

# history
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000

# prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# host-private
if [ -f $HOME/.bashrc.private ]; then
  source $HOME/.bashrc.private
fi

# aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# prevent tty from stopping
stty stop undef
