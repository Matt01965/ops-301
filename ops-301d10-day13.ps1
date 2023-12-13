# Script Name:                  Day 13
# Author:                       Matthew Earles
# Date of latest revision:      12/13/2023
# Purpose:                      Powershell Active Directory

# Resources - Microsoft Documentation and ChatGPT used to help with syntax and https://github.com/codefellows/seattle-ops-301d10/tree/main/class-13/challenges

# Import the Active Directory module
# Suggestion from Chat-GPT
Import-Module ActiveDirectory

# Set the user details - this makes the code modular
$firstName = "Franz"
$lastName = "Ferdinand"
$jobTitle = "TPS Reporting Lead"
$company = "GlobeX USA"
$office = "Springfield, OR"
$department = "TPS"
$email = "ferdi@GlobeXpower.com"

# Set the distinguished name (DN) for the user
$userDN = "CN=$firstName $lastName,OU=Users,DC=corp,DC=globex,DC=com"

# Create the new user 
New-ADUser -SamAccountName $firstName[0].ToString().ToLower() + $lastName.ToLower() -UserPrincipalName ($firstName[0].ToString().ToLower() + $lastName.ToLower() + "@corp.globex.com") -Name "$firstName $lastName" -GivenName $firstName -Surname $lastName -Enabled $true -EmailAddress $email -Title $jobTitle -Company $company -Office $office -Department $department -PassThru | Set-ADUser -ChangePasswordAtLogon $true

# Display the user details
Get-ADUser -Identity $userDN -Properties *

# Output a success message
Write-Host "User $firstName $lastName has been created in Active Directory."
