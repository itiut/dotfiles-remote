# language
LANG=en_US.UTF-8

# history
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000

# prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# host-specific
case `hostname` in
kugenuma51)
    export KUGENUMA51_HOME=/export/home1/tanikawa
    export PATH=$KUGENUMA51_HOME/opt/mysql/bin:$PATH
    ;;
esac
