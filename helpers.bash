KITTY_THEME=kitty-theme.conf

copy_config_file() {
    FILESPATH=./files/
    FILENAME=${1}
    DESTINATION=${2}
    
    FULL_FILE_PATH=${FILESPATH}${FILENAME}
    echo "Copy ${FULL_FILE_PATH} to ${DESTINATION}" 
    cp ${FULL_FILE_PATH} ${DESTINATION}
}


merge_config_file() {
    FILESPATH=./files/
    COMMONNAME=${FILESPATH}${1}
    PLATFORMNAME=${FILESPATH}${2}
    DESTINATION=${3}
    
    FULL_FILE_PATH=${FILESPATH}${FILENAME}
    echo "Merging ${COMMONNAME} and ${PLATFORMNAME} to ${DESTINATION}" 
    cp ${COMMONNAME} ${DESTINATION}
    cat ${PLATFORMNAME} >> ${DESTINATION}
}
