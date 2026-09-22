#! /bin/bash

#########################################
# Kattis problem: Two Stones
# This script determines the winner of a game where two players take turns picking up stones.
# Programer: [Your Name]
# Date: [Date]
# Algorithm:
#   1. Read the number of stones from input.
#   2. Check if the number of stones is odd or even.
#   3. If odd, Alice wins; if even, Bob wins.
##############################################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

main() {
    # Read the number of stones from input
    # FIXME: Read the number of stones from input and store it in a variable

    # FIXME: Determine the winner based on the parity of the number of stones
    # Call the winner function
}

# Call the main function only if the script is executed directly, not sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
