#!/usr/bin/env bash

clear_screen() {
    command clear
}

print_menu() {
    printf '%s\n' \
        '========= Menu options =================' \
        '[1] Add two numbers' \
        '[2] Subtract two numbers' \
        '[3] Multiply two numbers' \
        '[4] Divide two numbers' \
        '[5] Find larger of two numbers' \
        '[6] Find smaller of two numbers' \
        '[7] Find average of two numbers' \
        '[8] Quit the program'
    printf 'Enter one of the menu options [1-8]: '
}

get_two_numbers() {
    printf 'Enter two numbers separated by a space: '
    read -r NUM1 NUM2
}

find_sum() {
    awk "BEGIN { printf \"%.10g\\n\", $1 + $2 }"
}

find_difference() {
    # FIXME: Implement the function to find the difference of two numbers
    return
}

find_product() {
    # FIXME: Implement the function to find the product of two numbers
    return
}

find_average() {
    find_sum "$1" "$2" | awk '{ printf "%.10g\n", $1 / 2 }'
}

find_larger() {
    awk "BEGIN { if ($1 >= $2) print $1; else print $2 }"
}

find_smaller() {
    # FIXME: Implement the function to find the smaller of two numbers
    return
}

find_quotient() {
    if [[ "$2" == 0 ]]; then
        printf 'Cannot divide by zero.\n' >&2
        return 1
    fi
    awk "BEGIN { printf \"%.10g\\n\", $1 / $2 }"
}

program() {
    local option
    print_menu
    while ! [[ "$option" =~ ^[1-8]$ ]]; do
        read -r option
        [[ "$option" =~ ^[1-8]$ ]] || printf 'Invalid option, please enter a value between 1 and 8\n'
    done

    case "$option" in
        1) get_two_numbers; printf '%.2f + %.2f = %.2f\n' "$NUM1" "$NUM2" "$(find_sum "$NUM1" "$NUM2")" ;;
        2) echo "FIXME: Implement find_difference" ;;
        3) echo "FIXME: Implement find_product" ;;
        4) get_two_numbers; find_quotient "$NUM1" "$NUM2" | xargs -r printf '%.2f / %.2f = %.2f\n' "$NUM1" "$NUM2" ;;
        5) get_two_numbers; printf 'larger between %.2f & %.2f is %.2f\n' "$NUM1" "$NUM2" "$(find_larger "$NUM1" "$NUM2")" ;;
        6) echo "FIXME: Implement find_smaller" ;;
        7) get_two_numbers; printf 'average of %.2f and %.2f is %.2f\n' "$NUM1" "$NUM2" "$(find_average "$NUM1" "$NUM2")" ;;
        8) return 1 ;;
    esac
    return 0
}