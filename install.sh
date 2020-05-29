#!/bin/bash

################################################################################
########################## BEGIN ENDUSER CONFIGURATION #########################
################################################################################

  # If variable is non-zero script will install that customization
  ## git customizations
  git_custom=1
  ## oh-my-zsh customizations
  omz_custom=1
  ## vim customizations
  vim_custom=1
  ## osx terminal customizations
  terminal_custom=1
  ## matplotlib customizations
  matplotlib_custom=1

  # If you wish to hide wwuc folder in your home directory after installation
  hide_wwuc=0
  # Soft copy does not overwrite exisiting configuration files, rather appends
  # applicaton configuration to read from wwuc files, and thus you cannot
  # delete the wwuc repository without breaking your soft configurations
  ## currently avaiable for: git custom
  soft_copy=0

################################################################################
########################### END ENDUSER CONFIGURATION ##########################
################################################################################

wwuc="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
wwuc_path=${wwuc%/*}

read -p "Have you configured the install script and wish to proceed? (Y/N)" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

if test "$git_custom" -ne 0; then
  "$wwuc"/git_custom/install_git_custom.sh "$soft_copy"
fi
if test "$omz_custom" -ne 0; then
  "$wwuc"/omz_custom/install_omz_custom.sh
fi
if test "$vim_custom" -ne 0; then
  "$wwuc"/vim_custom/install_vim_custom.sh
fi
if test "$terminal_custom" -ne 0; then
  "$wwuc"/terminal_custom/install_terminal_custom.sh
fi
if test "$matplotlib_custom" -ne 0; then
  "$wwuc"/matplotlib_custom/install_matplotlib_custom.sh
fi
if test "$hide_wwuc" -ne 0; then
  mv "$wwuc_path"/wwuc "$wwuc_path"/.wwuc
fi
