#!/usr/bin/env python3

# Script Name:                  Bash in Python
# Author:                       Matthew Earles
# Date of latest revision:      12/04/2023
# Purpose:                      Practice python using bash scripts

# Declaration of variables

# Declaration of functions

# Main

# The os module in Python is a built-in module that provides a way to interact with the 
# operating system.
# It gives you Python code that is capable of interacting with the underlying operating system,
# enabling you to perform tasks related to file management, process handling, environment 
# manipulation, and system information retrieval - credit https://github.com/codefellows/seattle-ops-301d10/blob/main/class-06/challenges/DEMO.md

import os

# The `os.system()` function in Python executes a shell command and returns the exit status 
# of the command as an integer value.
# Here we assigned desired outputs to variables

user = os.system("whoami")
ip =  os.system("ip a")
hardware = os.system("lshw -short")

# if you print the variable, you get a 0 or a 1
print(user)

print(ip)

print(hardware)

print("0's = successful operation")

# End
