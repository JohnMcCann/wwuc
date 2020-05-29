#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo 'configuring vim...'

cp "$cwd"/vimrc ~/.vimrc
mkdir -p ~/.vim
cp -r "$cwd"/colors ~/.vim/

echo 'completed vim configure'
