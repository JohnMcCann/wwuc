#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo 'configuring oh-my-zsh...'

cp "$cwd"/zshrc ~/.zshrc
cp "$cwd"/custom.zsh ~/.oh-my-zsh/custom/
cp "$cwd"/johnryan.zsh-theme ~/.oh-my-zsh/custom/themes/

echo 'completed oh-my-zsh configure'
