#!/bin/bash


# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display the UID

echo "your uid id ${UID}"

# Display the username 

USER_NAME=$(id -un)

echo "Your name is $USER_NAME"

# Display the user is root or not

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'You are not root.'
fi



