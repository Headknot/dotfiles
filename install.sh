#!/usr/bin/env bash

set -e

# Creds: github.com/davejamesmiller github.com/alexbooker
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

dir=~/dotfiles

if ask "Install symlink for .Xresources?" Y; then
  ln -sf ${dir}/.Xresources ${HOME}/.Xresources
fi

if ask "Install symlink for .xinitrc?" Y; then
  ln -sf ${dir}/.xinitrc ${HOME}/.xinitrc
fi

if ask "Install symlink for .i3blocks.conf?" Y; then
  ln -sf ${dir}/.i3blocks.conf ${HOME}/.i3blocks.conf
fi

if ask "Install symlink for .scripts?" Y; then
  ln -sfn ${dir}/.scripts ${HOME}/.scripts
fi

if ask "Install symlink for i3?" Y; then
  ln -sfn ${dir}/.config/i3/config ${HOME}/.config/i3/config
fi

if ask "Install symlink for .zshrc?" Y; then
  ln -sfn ${dir}/.zshrc ${HOME}/.zshrc
  ln -sf ${dir}/.aliases.sh ${HOME}/.aliases.sh
fi

if ask "Copy .fonts to home folder?" Y; then
  cp -r ${dir}/.fonts ${HOME}/.fonts
fi

if ask "Copy bg.jpg to home folder?" Y; then
  cp ${dir}/bg.jpg ${HOME}/bg.jpg
fi
