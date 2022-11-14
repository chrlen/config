KITTY_THEME=kitty-theme.conf

copy_config_file() {
    FILESPATH=./files/
    FILENAME=${1}
    DESTINATION=${2}
    
    FULL_FILE_PATH=${FILESPATH}${FILENAME}
    echo "Copy ${FULL_FILE_PATH} to ${DESTINATION}" 
    cp ${FULL_FILE_PATH} ${DESTINATION}
}

