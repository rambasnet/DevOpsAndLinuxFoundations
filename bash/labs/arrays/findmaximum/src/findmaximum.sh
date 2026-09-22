#! /bin/bash

############################
# Kattis Problem: findmaximum
# Find the maximum number in an array of 3 integers.
#
# Programmer: [Your Name]
# Date: [Today's Date]
#
# Algorithm:
#   1. Read the three integers from input and store them in an array.
#   2. Iterate through the array and find the maximum value.
#   3. Print the maximum value.
############################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

main() {
    # Read the three integers from input and store them in an array
    local -a numbers=()
    for i in {1..3}; do
        read -r num
        #numbers+=("$num")
        # FIXME: Append the read number to the numbers array
    done
    echo "Input numbers: ${numbers[@]}" >&2  # Print the input numbers to stderr for debugging  
    # Find the maximum value in the array
    # FIXME: Call the find_maximum function with the array of numbers and store the result in max_value

    # Print the maximum value
    echo "$max_value"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi