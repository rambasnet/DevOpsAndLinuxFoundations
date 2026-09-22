#! /bin/bash

############################
# Kattis Problem: bollarogkulur
# Print which cup has the ball after five swaps.
#
# Programmer: [Your Name]
# Date: [Today's Date]
# Algorithm:
#   1. Initialize the position of the ball to cup 1.
#   2. Read the 5 pair of cups to be swapped from input.
#       i. For each pair of cups, swap the position of the ball if it is in one of the cups being swapped.
#   4. Print the final position of the ball.
############################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

main() {
    local i a b
    local ball=1  # Initialize the position of the ball to cup 1
    for i in {1..5}; do
        read -r a
        # FIXME: Read the second cup to be swapped from input and store it in variable b
        # FIXME: change &1 to &2 in the echo statement below to print to stderr kattis test and submit to work correctly.
        echo "Swapping cups $a and $b" >&1
        # FIXME: Call the swap_cups function with the two cups and the current position of the ball,
        # and update the position of the ball with the returned value
    done
    echo $ball  # Print the final position of the ball
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi