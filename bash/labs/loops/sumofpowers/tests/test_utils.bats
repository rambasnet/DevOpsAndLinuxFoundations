#! /usr/bin/env bats

# Unit test for utils.sh module

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "Test case for sum_of_powers function" {
    run power 2 3
    [ "$status" -eq 0 ]
    [ "$output" = "8" ]
}

@test "Test case for sum_of_powers function with zero exponent" {
    run power 5 0
    [ "$status" -eq 0 ]
    [ "$output" = "1" ]
}

#FIXME: Add 2 more test cases for sum_of_powers function with negative exponent and large numbers.

@test "Test sum function with small numbers" {
    run sum 3 2
    [ "$status" -eq 0 ]
    [ "$output" = "5" ]
}

@test "Test sum function with larger numbers" {
    run sum 300 400000
    [ "$status" -eq 0 ]
    [ "$output" = "400300" ]
}

# FIXME: Add 2 more test cases for sum function with negative numbers and large numbers.