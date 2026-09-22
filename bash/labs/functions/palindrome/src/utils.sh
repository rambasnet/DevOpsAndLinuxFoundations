#! /bin/bash

# Utility functions for the palindrome problem

is_palindrome() {
    local text="$1"
    local i
    local j
    local length=${#text}
    $(( j= length-1 )) # Initialize j to the last index of the string
    $(( i=0 )) # Initialize i to the first index of the string

    for ((i=0; i<length/2; i++)); do
        if [[ "${text:i:1}" != "${text:j:1}" ]]; then
            return 1 # Not a palindrome False
        fi
        # FIXME: Decrement j to move towards the start of the string
    done
    return 0 # Palindrome True
}

