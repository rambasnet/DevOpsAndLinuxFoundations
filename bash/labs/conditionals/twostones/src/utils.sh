# Utility functions for the Two Stones game

winner() {
    local stones=$1
    if (( stones % 2 == 1 )); then # Odd number of stones, Alice wins
        echo "Alice"
    # FIXME: If the number of stones is even, Bob wins. Print "Bob" to the output
    fi
}