#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
    ctags \
    go \
    jq \
    python@3 \
    tmux \
    tree

