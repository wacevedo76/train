#!/bin/bash
echo "Setting the variable x"
x=10
echo "Printing the value of x using a default fallback value"
echo "${x:-20}"
