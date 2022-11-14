#! /bin/bash
echo "Setting up configuration"

echo "$(pwd)" > ~/.config_location

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    ./setup_linux-gnu.bash
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo ${OSTYPE}
    ./setup_darwin.bash
else
    echo "OSTYPE: ${OSTYPE} is not supported."
fi
