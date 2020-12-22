################################################################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-10-27
# Description: Simple for sytax
# Usage: ./for-simple.sh

# Infinite loop, only exits on correct answer
while true; do
  read -p "I have keys but no locks, I have a space but no room, You can enter, but you can't go outside. What am I? " answer
  if [[ ${answer} =~ [Kk]eyboard ]]; then 
    echo "Correct, congratulations!"
    exit 0
  else
    # Print an error message and go back ino the loop
    echo "Incorrect, please try again"
  fi
done
