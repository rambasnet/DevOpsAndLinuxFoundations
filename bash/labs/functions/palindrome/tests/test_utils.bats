#!/usr/bin/env bats

# Testing functions in utils.sh for palindrome lab

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "Test case for palindrome function" {
    run is_palindrome "abcba"
    [ "$status" == 0 ]
}

@test "Test case for non-palindrome function" {
    run is_palindrome "abcde"
    [ "$status" == 1 ]
}

# FIXME: Add 2 more test cases for is_palindrome function
