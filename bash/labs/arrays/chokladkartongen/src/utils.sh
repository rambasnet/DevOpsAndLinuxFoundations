#! /bin/bash

# Utility functions for the chokladkartongen problem

answer() {
    local n=$1
    local boxes=("${!2}") # Get the array of boxes passed as an argument
    local min_new_boxes=0
    # Iterate through the array of boxes for each day
    # FIXME: Use a loop to iterate through the array of boxes and calculate the minimum number of new boxes bought
        # FIXME: If the number of boxes for the current day is greater than the number of boxes for the previous day,
        # increment the minimum number of new boxes bought
    echo "$min_new_boxes"
}