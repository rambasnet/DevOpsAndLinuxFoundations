#! /bin/bash

# Utility functions for the sumofpowers problem

power() {
    # Find power of a number without using the built-in power operator **
    # Return the result of base raised to the exponent
    local base=$1
    local exponent=$2
    local result=1
    # Calclulate the power without using the built-in power operator **
    for ((i=0; i<exponent; i++)); do
        # FIXME: Update result by multiplying it with base
    done

    echo "$result"
}

sum() {
    # FIXME: Implement the sum function to add two numbers and return the result
}