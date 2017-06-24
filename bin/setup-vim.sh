#!/usr/bin/env bash

if [[ "$*" == *"--pathogen"* || "$*" == "" ]] ; then
    mkdir -p ~/.vim/autoload
    curl -Sso ~/.vim/autoload/pathogen.vim \
        --location https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

if [[ "$*" == *"--ftplugin"* || "$*" == "" ]] ; then
    mkdir -p ~/.vim/ftplugin
    curl -Sso ~/.vim/ftplugin/python_pydoc.vim \
        --location https://raw.githubusercontent.com/fs111/pydoc.vim/master/ftplugin/python_pydoc.vim
fi

if [[ "$*" == *"--bundle"* || "$*" == "" ]] ; then
    mkdir -p ~/.vim/bundle
    plugins=("
        https://github.com/vim-utils/vim-man.git
        https://github.com/majutsushi/tagbar
        https://github.com/scrooloose/nerdtree.git
        https://github.com/motus/pig.vim.git
        https://github.com/uarun/vim-protobuf.git
        https://github.com/plasticboy/vim-markdown.git
        https://github.com/kien/ctrlp.vim.git
        https://github.com/fatih/vim-go.git")
    for plugin in $plugins ; do (cd ~/.vim/bundle && git clone $plugin); done
fi
