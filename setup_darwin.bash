#! /bin/bash
echo "Setting up ${OSTYPE}"
source helpers.bash

merge_config_file .zshrc.common .zshrc.darwin ~/.zshrc
merge_config_file kitty.conf.common kitty.conf.darwin ~/.config/kitty/kitty.conf
copy_config_file ${KITTY_THEME} ~/.config/kitty/current-theme.conf
copy_config_file .vimrc ~/
copy_config_file .tmux.conf ~/
copy_config_file_and_create_path init.vim ~/.config/nvim/
copy_config_file init.vim ~/.ideavimrc
