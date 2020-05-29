#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Check if we should make a softcopy
if test $1 -ne 0; then
  git_custom_dir="$cwd" 
else
  git_custom_dir=~/.git_custom
  mkdir -p "$git_custom_dir" &&
  cp "$cwd"/git_* "$git_custom_dir"
fi
git_alias="$git_custom_dir""/git_alias"
git_template="$git_custom_dir""/git_template"
git_ignore="$git_custom_dir""/git_ignore"

echo 'configuring git...'

git config --global alias.genesis "!. "$git_alias" && git_genesis"
git config --global alias.introduce "!. "$git_alias" && git_introduce"
git config --global alias.intro-gitlab "!. "$git_alias" && git_introgitlab"
git config --global alias.intro-github "!. "$git_alias" && git_introgithub"
git config --global alias.deathOfASalesman "!. "$git_alias" && git_death_of_a_salesman"
git config --global alias.omnistart "!. "$git_alias" && git_omnistart"
git config --global alias.init-www "!. "$git_alias" && git_initwww"
git config --global alias.addnw "!sh -c 'git diff -U0 -w --no-color "\$@" | git apply --cached --ignore-whitespace --unidiff-zero -'"
git config --global alias.map "!. "$git_alias" && pretty_git_log"
git config --global alias.mapall "!. "$git_alias" && pretty_git_log_all"
git config --global alias.mapblame "!. "$git_alias" && pretty_git_log_blame"
git config --global alias.mapgory "!. "$git_alias" && pretty_git_log_gory"

git config --global commit.template "$git_template"

git config --global core.excludesfile "$git_ignore"
git config --global core.editor '/usr/bin/vim'

git config --global diff.tool 'vimdiff'

git config --global merge.tool 'vimdiff'

git config --global push.default 'simple'

git config --global rerere.enabled 'true'

echo 'completed git configure'
