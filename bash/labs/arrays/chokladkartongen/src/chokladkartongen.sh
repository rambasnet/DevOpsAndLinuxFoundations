#! /bin/bash

############################
# Kattis Problem: chokladkartongen
# Calculate the minimum number of new boxes Bosse must have provably bought during the period.
#
# Programmer: [Your Name]
# Date: [Today's Date]
# Algorithm:
#   1. Read the number of days n from input.
#   2. Read the number of boxes for each day and store it in an array
#   3. Initialize a variable to keep track of the minimum number of new boxes bought
#   4. Iterate through the array of boxes for each day
#       a. If the number of boxes for the current day is greater than the number of boxes for the previous day,
#          increment the minimum number of new boxes bought by the difference between the two days  
#
#############################

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

main() {
    # Read the number of days n from input
    read -r n
    # Read the number of boxes for each day and store it in an array
    local -a boxes=()
    read -r -a boxes # read the number of boxes for each day and store it in an array
    # Initialize a variable to keep track of the minimum number of new boxes bought
    local min_new_boxes=0

    # Calculate the minimum number of new boxes bought
    # FIXME: Call the answer function with the number of days and the array of boxes, and store the result in min_new_boxes

    # Print the minimum number of new boxes bought
    echo "$min_new_boxes"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi
