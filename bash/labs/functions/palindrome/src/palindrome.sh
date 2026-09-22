#!/bin/bash

##########################
# Kattis Problem: palindrome
# Check if the given string is a palindrome or not.
#
# Programmer: [Your Name]
# Date: [Today's Date]
# Algorithm:
#   1. Read the input string.
#   2. Check if the string is a palindrome.
#   3. Print "Palindrome!" if it is a palindrome, otherwise 
#    print "Nothing special about this string :("
##########################

SRCIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SRCIPT_DIR/utils.sh"

main() {
    # Read the input string
    read -r input_string
    is_palindrome "$input_string"
    # FIXME: Step 3
    # Check the exit status of the is_palindrome function to determine if the string is a palindrome
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
