#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-06-12
# Description: Dealing with yes/no answers.
# Usage: ./yes-no.sh
################################################################################

read -p "Do you like this question? " reply_variable

# See if the user responded positively.
if [[ ${reply_variable} = 'y' || ${reply_variable} = 'Y' || ${reply_variable} = 'yes' || ${reply_variable} = 'Yes' || ${reply_variable} = 'YES' ]]; then
  echo "Great, I worked really hard on it!"
  exit 0
fi

# Maybe the user responded negatively?
if [[ ${reply_variable} = 'n' || ${reply_variable} = 'N' || ${reply_variable} = 'no' || ${reply_variable} = 'No' || ${reply_variable} = 'NO' ]]; then
  echo "You did not? But I worked so hard on it!"
  exit 0
fi

# if we get here, the user did not give a proper reponse.
echo "Please use yes/no!"
exit 1
