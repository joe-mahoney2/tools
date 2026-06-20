#!/usr/bin/bash
choco list --id-only > packages.txt
if [[ "$1" == "install" ]]; then
    echo "Install mode"
    choco install packages.txt -y
fi

