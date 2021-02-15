#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: 1.0.0
# Date: 2020-30-11
# Description: Show of the capabilities of an interactive script.
# Usage: ./interactive.sh
################################################################################

# Promt the user for information.
character_name=${1}
location=${2}
food=${3}

# Compose the story
echo "Recently, ${character_name} was seen in ${location} eating ${food}"
