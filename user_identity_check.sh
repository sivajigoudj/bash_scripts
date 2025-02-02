#!/bin/bash

#Display the UID and username of the user executing this script.
#Display if the user is the sivaji user or not



# Display the UID.

echo "You id id ${UID}"

#echo $(id -un)


# Only display if the UID does NOT match 1000.
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
  echo "Your UID does not match ${UID_TO_TEST_FOR}."
  exit 1
fi

# Display the username.

USER_NAME=$(id -un)

# Test if the command succeeded.
if [[ "${?}" -ne 0 ]] 
then
  echo 'The id command did not executed successfully.'
 exit 1
fi 
echo "Your username is ${USER_NAME}"


# You can use a string test conditional.

USER_NAME_TO_TEST_FOR='sivaji'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "Your username matches ${USER_NAME_TO_TEST_FOR}."
fi

# Test for != (not equal) for the string.

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "Your username does not matches ${USER_NAME_TO_TEST_FOR}."
  exit 1
fi

exit 0





