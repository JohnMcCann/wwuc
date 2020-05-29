#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo 'configuring matplotlib...'

cp "$cwd"/matplotlibrc ~/.matplotlib/
cp "$cwd"/gruvbox.mplstyle ~/.matplotlib/stylelib/

echo 'completed matplotlib configure'
