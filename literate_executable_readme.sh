#!/bin/bash

ask() {
    while true; do
        read -r -p "$* [y/n]: " yn < /proc/self/fd/2
        case $yn in
            [Yy]*) return 0 ;;
            [Nn]*) return 1 ;;
        esac
    done
}

HOW2() {
    ask "Do you want to run $1?" && bash && exec true
}
