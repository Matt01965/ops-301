#!/bin/bash

# Script Name:                     Append; Date and Time 
# Auther:                          Matthew Earles
# Date of latest revision:         11/28/2023
# Purpose:                         Append; Date and Time


# Declaration of Variables

# First thing we need to do is create the file path it requires which is "Copies /var/log/syslog to the current working directory"
origin_file="/var/log/syslog"


# Secondly it wants us to "Appends the current date and time to the filename"
# This will show us the date in month, day and year
date_suffix=$(date +"%m-%d-%Y")


# Declaration of functions

# Main 

# We need some sort of destination file for the "date_suffix" above
destination_file="syslog_${date_suffix}.log"

# We need to create a copy of the "origin_file" back to the "destination_file"
cp "$origin_file" "$destination_file"

echo "We copied the $origin_file to the new $destination_file"

# End
