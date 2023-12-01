#!/bin/bash

# Script Name:                  Conditionals in Menu Systems
# Author:                       Matthew Earles
# Date of latest revision:      11/30/2023
# Purpose:                      Conditionals in Menu Systems



# Declaration of variables

# Declaration of functions

# Main
while true; do
    clear
    echo "Please input the # of the operation you would like"
    echo "1. Hello World"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"
    read choice

# This script is all about seeing the users input!
# The program should next use a conditional statement to evaluate the user’s input, then act according to what the user selected.

    if [[ $choice == 1 ]]; then
        echo "Hello World"
        # The -p option is used with the read command to display a prompt to the user and wait for them to enter input.
        read -p "Press Enter to continue"
    elif [[ $choice == 2 ]]; then
        ping -c 4 127.0.0.1
        read -p "Press Enter to continue"
    elif [[ $choice == 3 ]]; then
        ip a
        read -p "Press Enter to continue"
    elif [[ $choice == 4 ]]; then
        echo "Exiting"
        exit 0
    else
        echo "Invalid choice"
        read -p "Press Enter to continue"
    fi
done

# CHAT GPT Saved me immensely on this assignment this was the hardest challenge we have had yet honestly since we didnt review it in class I had to wing it.
# Source: https://github.com/codefellows/seattle-ops-301d10/blob/main/class-04/challenges/DEMO.md
# End
