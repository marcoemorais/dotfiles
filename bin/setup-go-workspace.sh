#!/usr/bin/env bash
if [[ $# -lt 1 ]] ; then
    echo "Usage: $0 [PACKAGE]"
    exit 1
fi
set -e
PACKAGE=$1
export GOPATH=$(pwd)  # Build dependencies are vendored within GOPATH.
echo export GOPATH=$GOPATH >> .envrc
direnv allow .
mkdir -p $GOPATH/src/github.com/$PACKAGE
git clone git@github.com:${PACKAGE}.git $GOPATH/src/github.com/$PACKAGE
cd $GOPATH/src/github.com/$PACKAGE
