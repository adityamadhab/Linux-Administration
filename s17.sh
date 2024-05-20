#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <login_name>"
    exit 1
fi

# Store the provided login name
login_name="$1"

# Check the last login time for the given user
last_login=$(last -1 "$login_name" | awk '{print $4,$5,$6,$7}')

# Check if the user has never logged in
if [ -z "$last_login" ]; then
    echo "User $login_name has never logged in."
else
    echo "User $login_name last logged in at: $last_login"
fi
