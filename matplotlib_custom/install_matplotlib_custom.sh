#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo 'configuring matplotlib...'

if [ ! -d "~/.matplotlib/stylelib" ]; then
  mkdir -p ~/.matplotlib/stylelib
fi

cp "$cwd"/matplotlibrc ~/.matplotlib/
cp "$cwd"/gruvbox.mplstyle ~/.matplotlib/stylelib/

echo 'completed matplotlib configure'
