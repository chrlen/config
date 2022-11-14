#! /bin/bash
echo "Setting up ${OSTYPE}"
source helpers.bash

copy_config_file .zshrc.linux-gnu ~/.zshrc
copy_config_file .vimrc ~/
copy_config_file kitty.conf.linux-gnu ~/.config/kitty/kitty.conf
copy_config_file ${KITTY_THEME} ~/.config/kitty/current-theme.conf
copy_config_file .tmux.conf ~/
