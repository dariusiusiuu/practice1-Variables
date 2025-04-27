#!/bin/bash

# The CRACK variable holds a string value
CRACK="dariodariodario"

# The ## operator removes the largest possible number of characters from the start of the string that match the pattern "dar"
# What gets removed is everything before the last occurrence of "dar", leaving "io"
echo "The result of ##*dar is" ${CRACK##*dar}

# The # operator removes the smallest possible number of characters from the start of the string that match the pattern "dar"
# In this case, it removes "dar", leaving "iodariodario"
echo "The result of #*dar is" ${CRACK#*dar}

# The %% operator removes the largest possible number of characters from the end of the string that match the pattern "io"
# What gets removed is everything after the last occurrence of "io", leaving "dariodari"
echo "The result of %%io* is" ${CRACK%%io*}

# The % operator removes the smallest possible number of characters from the end of the string that match the pattern "io"
# What gets removed is everything after the first occurrence of "io", leaving "dariodari"
echo "The result of %io* is" ${CRACK%io*}
