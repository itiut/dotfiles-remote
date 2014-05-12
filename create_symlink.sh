#!/bin/sh
cd $(dirname $0)
for dotfile in .?*; do
    case $dotfile in
        ..)
            continue;;
        .git)
            continue;;
        .gitignore)
            continue;;
        .gitmodules)
            continue;;
        *)
            ln -sv "$PWD/$dotfile" $HOME
            ;;
    esac
done
