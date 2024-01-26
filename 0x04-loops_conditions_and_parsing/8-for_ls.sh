#!/usr/bin/env bash
# This script displays the content of the current directory in a list format,
# showing only the part of the name after the first dash.

for file in *; do
    # Check if the file is not hidden and is a regular file
    if [[ ! "$file" =~ ^\..* && -f "$file" ]]; then
        # Extract the part of the name after the first dash
        name_part=$(echo "$file" | cut -d'-' -f2-)
        echo "$name_part"
    fi
done
