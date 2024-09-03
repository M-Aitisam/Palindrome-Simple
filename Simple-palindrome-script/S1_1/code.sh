#!/bin/bash


normalize() {
    echo "$1" | tr -d '[:space:][:punct:]' | tr '[:upper:]' '[:lower:]'
}

is_palindrome() {
    local str="$1"
    local reversed_str="$(echo "$str" | rev)"
    
    if [ "$str" == "$reversed_str" ]; then
        echo "The string is a palindrome."
    else
        echo "The string is not a palindrome."
    fi
}

echo "Enter a string to check if it is a palindrome:"
read user_input


normalized_str=$(normalize "$user_input")


is_palindrome "$normalized_str"

