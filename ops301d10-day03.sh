#!/bin/bash

# Script Name:                  Ops Challenge: File Permissions
# Author:                       Matthew Earles
# Date of latest revision:      11/29/2023
# Purpose:                      Changing file permissions

# Declaration of variables
UserInputDirPath=()
UserInputPer=()


# Declaration of functions



# Main

# So firstly we need to "Prompts user for input directory path."
# Secondly we need to "Prompts user for input permissions number (e.g. 777 to perform a chmod 777)"
# Thirdly we need to "Navigates to the directory input by the user and changes all files inside it to the input setting."
# Lastly we need to "Prints to the screen the directory contents and the new permissions settings of everything in the directory."


# This Bash code prompts the user to enter a directory path and assigns the entered value to the variable "UserInputDirPath".
read -p "Input Directory Path to Change Permissions: " UserInputDirPath

# This Bash code prompts the user to enter a numerical value for permissions and assigns the entered value to the variable "UserInputPer".
read -p "Input Permissions Number: " UserInputPer

# Lets change permissions according to user inputs recursively. This command will modify using -R which set permissions on this directory and all its contents.
# Source: https://github.com/codefellows/seattle-ops-301d10/blob/main/class-03/challenges/DEMO.md

chmod -R "$UserInputPer" "$UserInputDirPath"

# We have to print the Directory with new permissions thee user made
echo "New Permissions"
ls -l "$UserInputDirPath"


# Other source: https://github.com/codefellows/seattle-ops-301d10/tree/main/class-03/challenges
# End
