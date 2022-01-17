#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
    ccache \
    direnv \
    go \
    htop \
    jq \
    pyenv \
    ripgrep \
    tmux \
    tree \
    universal-ctags \
    zlib

