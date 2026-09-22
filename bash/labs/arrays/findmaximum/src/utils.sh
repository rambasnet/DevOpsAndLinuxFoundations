#! /bin/bash

# Utility functions for the findmaximum problem

find_maximum() {
    local -a numbers=("$@")
    local max="${numbers[0]}"

    for num in "${numbers[@]}"; do
        # FIXME: Compare the current number with the max and update max if the current number is greater
    done
    # FIXME: Print/return the maximum value found
}