#!/ /bin/bash

# Utility functions

# Swap the positions of two cups, and return the new position of the ball.
swap_cups() {
    local a=$1 # The first cup to swap
    local b=$2 # The second cup to swap
    local ball=$3 # The current position of the ball
    if [[ "$ball" == "$a" ]]; then
        echo "$b"
    elif [[ "$ball" == "$b" ]]; then
        # FIXME: the current position of the ball after swap
    else
        echo "$ball"
    fi
}