#! /bin/bash

############################
# Kattis Problem: sumofpowers
# Calculate the sum of powers of a given numbers
#
# Programmer: [Your Name]
# Date: [Today's Date]
# Algorithm:
#   1. Read the fist number base, k
#   2. Read the second number n, number of terms
#   3. Iterate from 1 to n
#       a. Read the number x
#       b. Calculate the power of k to x and add it to the sum
#   4. Print the sum
############################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

main() {
    # Read the first number base, k
    read -r k
    # Read the second number n, number of terms
    read -r n
    local s=0
    local p
    for ((i=0; i<n; i++)); do
        # Read the number x
        read -r x
        # FIXME: Calculate the power of k to x update p using power function
        # FIXME: Add p to the sum s using sum function
    done
    # Print the sum
    echo "$s"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
