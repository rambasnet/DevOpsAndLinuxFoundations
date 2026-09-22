#! /usr/bin/env bats

setup() {
    source "$BATS_TEST_DIRNAME/../src/utils.sh"
}

@test "Test case for side length" {
    run side_length 3 4
    [ "$status" -eq 0 ]
    [ "$output" == "7" ]
}

assert_almost_equal() {
    local actual="$1"
    local expected="$2"
    local tolerance="${3:-0.000001}"

    if ! awk -v a="$actual" -v e="$expected" -v t="$tolerance" '
        BEGIN {
            difference = a - e
            if (difference < 0)
                difference = -difference
            exit !(difference <= t)
        }
    '; then
        printf 'Expected %s ± %s, got %s\n' \
            "$expected" "$tolerance" "$actual" >&2
        return 1
    fi
}

@test "Test case for diagonal length" {
    run diagonal_length 3 4
    echo "Output: $output" >&2  # Debugging line to print the output
    [ "$status" -eq 0 ]
    assert_almost_equal "$output" "5.0" "0.000001"
}

# FIXME: Add 2 more test cases for side_length function
# FIXME: Add 2 more test cases for diagonal_length function