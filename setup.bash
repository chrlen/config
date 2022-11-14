#! /bin/bash
echo "Deploying configuration"

echo "$(pwd)" > ~/.config_location

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    ./setup_linux-gnu.bash
elif [[ "$OSTYPE" == "darwin"* ]]; then
    ./setup_darwin.bash
else
    echo "OSTYPE: ${OSTYPE} is not supported."
fi
