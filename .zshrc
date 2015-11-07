# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

## Theme
ZSH_THEME="bullet-train"

BULLETTRAIN_DIR_BG=black
BULLETTRAIN_DIR_FG=011  # yellow
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_GIT_BG=235  # gray
BULLETTRAIN_GIT_FG=white
BULLETTRAIN_GIT_CLEAN=" %F{green}✔%F{black}"
BULLETTRAIN_GIT_DIRTY=" %F{red}✘%F{black}"

## Plugins
plugins=(git)

## Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh


# User configurations
export TERM=screen-256color

## override bullet-train
SEGMENT_SEPARATOR=
