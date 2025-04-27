#!/bin/bash

echo "Without quotes:"
echo \$*: $*
echo \$@: $@

echo ""
echo "With double quotes:"
echo "\$*:" "$*"
echo "\$@:" "$@"

# Explanation (commented inside the script)
# $* treats all the arguments as a single string.
# $@ treats each argument as a separate string.
