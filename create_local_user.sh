#!/bin/bash

# This script creates an account on the local system.
# You will be prompted for the account name and password.

# Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME


# Ask for the real name.
read -p 'Enter the name of the person who this account is for: ' COMMENT

# Ask for the password.
read -p 'Enter the password to use for the account: ' PASSWORD


# Create the user.
sudo useradd -c "${COMMENT}" -m ${USER_NAME}


# Set the password for the user.
echo "${USER_NAME}:${PASSWORD}" | sudo chpasswd

# Force password change on first login
passwd -e ${USER_NAME}

echo "User ${USER_NAME} has been created and the password has been set."
