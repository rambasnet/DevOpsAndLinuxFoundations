#!/usr/bin/env bats

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "Alice wins when the number of stones is 1" {
    run winner 1
    [ "$status" -eq 0 ]
    [ "$output" = "Alice" ]
}

@test "Bob wins when the number of stones is 2" {
    run winner 2
    [ "$status" -eq 0 ]
    [ "$output" = "Bob" ]
}

# FIXME: Add 4 more test cases for different numbers of stones, including edge cases and larger numbers.
