#! /bin/bash
echo "Setting up ${OSTYPE}"
source helpers.bash

cp files/.zshrc.common ~/.zshrc
cat files/.zshrc.darwin >> ~/.zshrc

copy_config_file .vimrc ~/
copy_config_file kitty.conf.darwin ~/.config/kitty/kitty.conf
copy_config_file ${KITTY_THEME} ~/.config/kitty/current-theme.conf
copy_config_file .tmux.conf ~/