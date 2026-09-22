#! /usr/bin/env bats

# Unit testing for utils.sh in chokladkartongen lab

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "answer with increasing boxes" {
    boxes=(1 2 3 4 5)
    run answer 5 boxes[@]
    [ "$status" -eq 0 ]
    [ "$output" -eq 4 ]
}

@test "answer with same size boxes" {
    boxes=(3 3 3 3 3)
    run answer 5 boxes[@]
    [ "$status" -eq 0 ]
    [ "$output" -eq 0 ]
}

# FIXME: Add 2 more test cases for answer function with different box sizes and edge cases.
