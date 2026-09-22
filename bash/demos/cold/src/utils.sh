#! /bin/bash

# Function to count the number of days with temperature below 0 degrees Celsius
count_cold_days() {
    local count=0
    local temps=("$@")
    for temp in "${temps[@]}"; do
        if ((temp < 0)); then
            ((count++))
        fi
    done
    echo "$count"
}