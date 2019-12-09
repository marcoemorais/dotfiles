#!/usr/bin/env bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

NERDTREE_TAG=6.3.0
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree --branch $NERDTREE_TAG

CTRLP_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim --branch $CTRLP_TAG

VIM_MAN_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/vim-utils/vim-man.git ~/.vim/bundle/vim-man --branch $VIM_MAN_TAG

TAGBAR_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar --branch $TAGBAR_TAG

PIG_VIM_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/motus/pig.vim.git ~/.vim/bundle/pig.vim --branch $PIG_VIM_TAG

VIM_PROTOBUF_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/uarun/vim-protobuf.git ~/.vim/bundle/vim-protobuf --branch $VIM_PROTOBUF_TAG

VIM_MARKDOWN_TAG=master
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown --branch $VIM_MARKDOWN_TAG

VIM_GO_TAG=v1.21
mkdir -p ~/.vim/bundle && \
    git clone --recursive -q https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go --branch $VIM_GO_TAG

