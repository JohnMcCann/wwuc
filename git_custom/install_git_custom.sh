#!/bin/bash

cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Check if we should make a softcopy
if test $1 -ne 0; then
  git_custom_dir="$cwd" 
else
  git_custom_dir=~/.git_custom
  mkdir -p "$git_custom_dir" &&
  cp -r "$cwd"/git_* "$git_custom_dir"
fi

# paths
git_alias_map="$git_custom_dir""/git_aliases/git_map"
git_alias_init_www="$git_custom_dir""/git_aliases/git_init_www"
git_alias_skip="$git_custom_dir""/git_aliases/git_skip"
git_template="$git_custom_dir""/git_template"
git_ignore="$git_custom_dir""/git_ignore"

echo 'configuring git...'

# add init-www aliases
git config --global alias.genesis \
"!. "$git_alias_init_www" && git_genesis"
git config --global alias.introduce \
"!. "$git_alias_init_www" && git_introduce"
git config --global alias.intro-gitlab \
"!. "$git_alias_init_www" && git_introgitlab"
git config --global alias.intro-github \
"!. "$git_alias_init_www" && git_introgithub"
git config --global alias.deathOfASalesman \
"!. "$git_alias_init_www" && git_death_of_a_salesman"
git config --global alias.omnistart \
"!. "$git_alias_init_www" && git_omnistart"
git config --global alias.init-www \
"!. "$git_alias_init_www" && git_initwww"
# add non-whitespace changes to index
git config --global alias.addnw \
"!sh -c 'git diff -U0 -w --no-color "\$@" | "\
"git apply --cached --ignore-whitespace --unidiff-zero -'"
# add map aliases
git config --global alias.map \
"!. "$git_alias_map" && pretty_git_log"
git config --global alias.mapall \
"!. "$git_alias_map" && pretty_git_log_all"
git config --global alias.mapblame \
"!. "$git_alias_map" && pretty_git_log_blame"
git config --global alias.mapgory \
"!. "$git_alias_map" && pretty_git_log_gory"
# add skip aliases
git config --global alias.skip \
"!. "$git_alias_skip" && git_skip"
git config --global alias.unskip \
"!. "$git_alias_skip" && git_unskip"

git config --global commit.template "$git_template"

git config --global core.excludesfile "$git_ignore"
git config --global core.editor '/usr/bin/vim'

git config --global diff.tool 'vimdiff'

git config --global merge.tool 'vimdiff'

git config --global push.default 'simple'

git config --global rerere.enabled 'true'

echo 'completed git configure'
