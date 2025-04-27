#!/bin/bash

echo ""
read -p "Enter the name of a global variable (i. e., HOME, USER, SHELL, PWD, PATH): " name
echo "The value of $name is: ${!name}"

echo ""
echo "Arguments passed to the script: $@"

echo ""
echo "Return value of the last command: $?"

echo ""
echo "Current Shell PID: $$"
