################################################################################
# Author: Sebastiaan Tammer
# Version: 1.0.0
# Date: 2018-10-27
# Description: A simple riddle in a while loop
# Usage: ./while-interactive.sh
################################################################################

# Infinit loop, only exits on correct answer.
while true; do
  read -p "I have keys bo no locks, I have a space but no room. You can enter, but can't go ouside. what am I? " answer
  if [[ ${answer} =~ [Kk]eyboard ]]; then # Use regular expressions 
    echo "Correct, congratulations!"
    exit 0
  else
    # Print an error message and go back into the loop
    echo "Incorrect, please try again"
  fi
done
