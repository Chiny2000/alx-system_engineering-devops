#!/usr/bin/env bash
# This script displays the visitor IP along with the HTTP status code from the Apache log file.

# Ensure the apache-access.log file is in the same directory as the script.
log_file="apache-access.log"

# Use awk to extract and display the IP and HTTP status code.
awk '{print $1, $9}' "$log_file"
