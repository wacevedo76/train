#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: 1.0.0
# Date: 2020-30-11
# Description: Show of the capabilities of an interactive script.
# Usage: ./interactive.sh
################################################################################

# Promt the user for information.
read -p "Name a fictional character: " character_name
read -p "Name an actual location: " location
read -p "What's your favorite food? " food

# Compose the story
echo "Recently, ${character_name} was seen in ${location} eating ${food}"
