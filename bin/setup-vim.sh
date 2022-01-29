#!/usr/bin/env bash

# Install pathogen.
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim plugins.
GUTENTAGS_TAG=master
git clone https://github.com/ludovicchabant/vim-gutentags.git ~/.vim/bundle/vim-gutentags --branch $GUTENTAGS_TAG

NERDTREE_TAG=6.10.16
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree --branch $NERDTREE_TAG

VIM_MAN_TAG=master
git clone https://github.com/vim-utils/vim-man.git ~/.vim/bundle/vim-man --branch $VIM_MAN_TAG

CTRLP_TAG=1.81
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp --branch $CTRLP_TAG

VIM_GO_TAG=v1.25
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go --branch $VIM_GO_TAG

VIM_RIPGREP_TAG=v1.0.3
git clone https://github.com/jremmen/vim-ripgrep.git ~/.vim/bundle/vim-ripgrep --branch $VIM_RIPGREP_TAG

TAGBAR_TAG=v3.0.0
git clone https://github.com/preservim/tagbar.git ~/.vim/bundle/tagbar --branch $TAGBAR_TAG
