#!/bin/bash

echo "Global variables:"
echo "SHELL: $SHELL"
echo "DISPLAY: $DISPLAY"
echo "HOME: $HOME"
echo "PATH: $PATH"
echo "MANPATH: $MANPATH"
echo "PS1: $PS1"
echo "PS2: $PS2"
echo "USER: $USER"
echo "TERM: $TERM"
echo "PWD: $PWD"

echo ""
echo "Shell arguments:"
echo "All arguments (as a single string): $*"
echo "All arguments (individually): $@"

echo ""
echo "Exit code of the last command: $?"

echo ""
echo "Current Shell PID: $$"
