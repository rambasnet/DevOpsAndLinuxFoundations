#!/bin/bash

##########################
# 
# Kattis Problem: Cutting Corners
#
# Programmer: [Your Name]
# Date: [Today's Date]
# Algorithm:
#   1. Read the width and height of the rectangle from input.
#   2. Calculate total length of cutting rectangular
#   3. Calculate cutting along the diagonal 
#   4. Calculate and print the difference between the two lengths
# #########################

SRCIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SRCIPT_DIR/utils.sh"

main() {
    # FIXME: Read the width and height of the rectangle from input
    s_length=$(side_length $width $height)
    diag_length=$(diagonal_length $width $height)
    difference=$(awk "BEGIN { printf \"%.10g\\n\", $s_length - $diag_length }")
    # FIXME: Print the difference between the two lengths with 10 decimal places
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi