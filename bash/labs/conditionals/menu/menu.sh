#!/usr/bin/env bash

######################
# Conditional Lab
#
# Programmer: [Your Name]
# Date: [Today's Date]

# Program finds statistical values of two given numbers using user-defined functions.

# A menu-driven program that demonstrates user-defined functions, automated testing conditional statements and loop.
######################

source "utils.sh"

main() {
    while program; do
        read -r -p 'Enter to continue...' || break
        clear_screen
    done

    printf 'Good bye...\n'
    printf 'Enter to quit the program.\n'
    read -r
}

main "$@"