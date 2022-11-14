#! /bin/bash
echo "Setting up ${OSTYPE}"
source helpers.bash

cp files/.zshrc.common ~/.zshrc
cat files/.zshrc.darwin >> ~/.zshrc

cp files/kitty.conf.common ~/.config/kitty/kitty.conf
cat files/kitty.conf.darwin >> ~/.config/kitty/kitty.conf
copy_config_file ${KITTY_THEME} ~/.config/kitty/current-theme.conf

copy_config_file .vimrc ~/
copy_config_file .tmux.conf ~/