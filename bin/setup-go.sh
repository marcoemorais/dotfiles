#!/usr/bin/env bash
# Setup your Go toolchain.
#
# Use this script to install tools into $GOPATH/bin.
#
# Make sure $GOPATH/bin is in your PATH, so that you
# have access to the tools installed by this script
# from other workspaces.
#
# Recommend using vim-go to install the rest.
# 1. Install vim-go plugin (https://github.com/fatih/vim-go).
# 2. Start vim.
# 3. Type :GoInstallBinaries

set -e
function install() {
    REPO=$1
    if [[ ! -d $GOPATH/src/github.com/$REPO ]] ; then
        mkdir -p $GOPATH/src/github.com/$REPO
        git clone git@github.com:$REPO.git $GOPATH/src/github.com/$REPO
        cd $GOPATH/src/github.com/$REPO && go install
    fi
}

export GOPATH=$HOME/go
install direnv/direnv
install jstemmer/gotags
go get github.com/constabulary/gb/...
