#!/bin/bash

# Utility functions for the Cutting Corners problem

side_length() {
    # Calculate the total length of cutting along the 2 sides of a rectangle
    local width=$1
    local height=$2
    # FIXME: print the sum of width and height with 10 decimal places
}

diagonal_length() {
    # Calculate the length of the diagonal of a rectangle
    local width=$1
    local height=$2
    echo $(awk "BEGIN { printf \"%.10g\\n\", sqrt($width^2 + $height^2) }")
}
