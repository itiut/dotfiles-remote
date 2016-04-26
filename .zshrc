### envs
export TERM=screen-256color

### zplug
source $HOME/src/github.com/b4b4r07/zplug/zplug

_omz_libs=(
  completion
  directories
  functions
  git
  grep
  history
  key-bindings
  misc
  termsupport
  theme-and-appearance
)
zplug 'robbyrussell/oh-my-zsh', of:"lib/{${(j:,:)_omz_libs}}.zsh"
zplug 'itiut/itiut.zsh-theme', of:'itiut.zsh-theme', nice: 19

zplug check || zplug install
zplug load

### zshoptions
# completion
setopt AUTO_LIST
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt LIST_PACKED

# expansion and globbing
setopt EXTENDED_GLOB
setopt NO_NOMATCH

# history
setopt HIST_REDUCE_BLANKS

# input/output
setopt CORRECT
setopt PRINT_EIGHT_BIT

# zle
setopt NO_BEEP

### aliases
# overrides
alias cp='cp -i'
alias ls="$aliases[ls] -F"  # defined in oh-my-zsh/lib/theme-and-appearance.zsh
alias mv='mv -i'
alias rm='rm -i'

# abbreviations
alias g='git'
alias l='ls'
alias la='ls -A'
alias ll='ls -l -a'
alias t='tig'
alias ta='tig --all'
alias v='vim'
