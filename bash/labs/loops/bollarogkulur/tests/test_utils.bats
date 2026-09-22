#! /usr/bin/env bats

# Unit testing for utils.sh in bollarogkulur lab

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "Swap cup 2 and 3" {
    run swap_cups 2 3 1
    [ "$status" -eq 0 ]
    [ "$output" = "1" ]
}

@test "Swap cup 1 and 2" {
    run swap_cups 1 2 1
    [ "$status" -eq 0 ]
    [ "$output" = "2" ]
}

@test "Swap cup 1 and 3" {
    run swap_cups 2 3 3
    [ "$status" -eq 0 ]
    [ "$output" = "2" ]
}