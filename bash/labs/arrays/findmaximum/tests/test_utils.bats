#! /usr/bin/env bats

# Unit testing for utils.sh in findmaximum lab

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "find_maximum with positive numbers" {
    run find_maximum 3 4 5
    [ "$status" -eq 0 ]
    [ "$output" -eq 5 ]
}

@test "find_maximum with negative numbers" {
    run find_maximum -1 -2 -3
    [ "$status" -eq 0 ]
    [ "$output" -eq -1 ]
}

# FIXME: Add 2 more test cases for find_maximum function with mixed numbers and edge cases.