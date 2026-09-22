#!/bin/bash
source "utils.sh"

test() {
    if  [[ "$(find_sum 10 12.5)" != 22.5 ]]; then
        echo "Test case for find_sum failed" >&2
    fi
    if  true; then # FIXME: Implement test case for find_difference
        echo "Test case for find_difference failed" >&2
    fi
    if  true; then #FIXME: Implement test case for find_product
        echo "Test case for find_product failed" >&2
    fi
    if  [[ "$(find_average 10 12.5)" != 11.25 ]]; then
        echo "Test case for find_average failed" >&2
    fi
    if  [[ "$(find_product 4 2.5)" != 10 ]]; then
        echo "Test case for find_product failed" >&2
    fi
    if  [[ "$(find_average 10 12.5)" != 11.25 ]]; then
        echo "Test case for find_average failed" >&2
    fi
    if  [[ "$(find_larger 10 12.5)" != 12.5 ]]; then
        echo "Test case for find_larger failed" >&2
    fi
    if  true; then # FIXME: Implement test case for find_smaller
        echo "Test case for find_smaller failed" >&2
    fi
    if  [[ "$(find_quotient 10 2.5)" != 4 ]]; then
        echo "Test case for find_quotient failed" >&2
    fi    
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    test
fi
