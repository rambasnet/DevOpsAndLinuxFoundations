#!/usr/bin/env bats

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "count_cold_days with all days above 0" {
    run count_cold_days 1 2 3 4 5
    [ "$status" -eq 0 ]
    [ "$output" -eq 0 ]
}

@test "count_cold_days with all days below 0" {
    run count_cold_days -1 -2 -3 -4 -5
    [ "$status" -eq 0 ]
    [ "$output" -eq 5 ]
}

@test "count_cold_days with mixed days" {
    run count_cold_days -1 2 -3 4 -5
    [ "$status" -eq 0 ]
    [ "$output" -eq 3 ]
}
