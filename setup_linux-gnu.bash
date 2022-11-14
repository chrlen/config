#! /bin/bash
echo "Setting up linux-gnu"
source helpers.bash

copy_config_file .zshrc ~
copy_config_file .vimrc ~/
copy_config_file kitty.conf ~/.config/kitty/
copy_config_file .tmux.conf ~/
copy_config_file gruvbox_dark_hard.conf ~/.current_kitty_theme.conf
