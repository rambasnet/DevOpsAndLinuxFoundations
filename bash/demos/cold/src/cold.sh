#! /bin/bash

# set safe execution flags for the script
# instruct bash to exit immediately if a command exits with a non-zero status, 
# treat unset variables as an error, and prevent errors in a pipeline from being masked
set -euo pipefail


# Kattis cold problem : https://open.kattis.com/problems/cold
# Find the number of days strictly below 0 degrees Celsius

# Algorithm steps:
# 1. Read the number of days and discard it since we can read the temperatures directly into an array
# 2. Read the temperatures for each day and store them in an array
# 3. Iterate through the array and count the number of days with temperature below 0

# include the utils.sh file to use the count_cold_days function
SRCIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SRCIPT_DIR/utils.sh"

main() {
    # shellcheck disable=SC2034
    # read -r n
    # read and discard the number of days/ 
    # avoids Shellcheck warning for unused variable 
    read -r _
    count=0
    # read temperature array
    read -ra temps
    count=$(count_cold_days "${temps[@]}")
    echo "$count"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi