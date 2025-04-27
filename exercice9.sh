#!/bin/bash

# a) What do the ##, #, %% and % operators exactly do?
# The "##" operator removes the largest possible number of characters from the beginning of the string 
# that match the given pattern.
# The "#" operator removes the smallest possible number of characters from the beginning of the string 
# that match the given pattern.
# The "%%" operator removes the largest possible number of characters from the end of the string 
# that match the given pattern.
# The "%" operator removes the smallest possible number of characters from the end of the string 
# that match the given pattern.

# b) How can they be useful in Bash scripts?
# These operators are very useful for manipulating and processing strings in Bash scripts. 
# They can be used to:
# - Remove specific prefixes or suffixes from a string.
# - Extract parts of a string, like file names or extensions.
# - Process data more flexibly, especially when working with paths, file names, or patterns.

# c) Modifying the value of CRACK and observing how the output changes

#Before change:
CRACK="oriolorioloriol"
echo "The result of ##*ori is" ${CRACK##*ori}
echo "The result of #*ori is" ${CRACK#*ori}
echo "The result of %%ol* is" ${CRACK%%ol*}
echo "The result of %ori* is" ${CRACK%ori*}

echo ""
echo ""

#After change:
CRACK="dariodariodario"
echo "The result of ##*ori is" ${CRACK##*ori}
echo "The result of #*ori is" ${CRACK#*ori}
echo "The result of %%ol* is" ${CRACK%%ol*}
echo "The result of %ori* is" ${CRACK%ori*}

# Comments at the end of the script:

# Before changing the value of CRACK (CRACK="oriolorioloriol"):
# ##*ori: The ## operator removes everything before the last occurrence of the pattern "ori". So, from "oriolorioloriol", it removes everything up to the last "ori", leaving "ol".
# #*ori: The # operator removes the minimum possible match of the pattern "ori". In this case, it only removes the first occurrence of "ori", leaving "olorioloriol".
# %%ol*: The %% operator removes the maximum possible match from the end of the string that matches the pattern "ol". It removes everything after the last occurrence of "ol", leaving "oriol".
# %ori*: The % operator removes the minimum possible match from the end of the string that matches the pattern "ori". It removes everything after the first occurrence of "ori", leaving "oloriol".
# After changing the value of CRACK (CRACK="dariodariodario"):
# ##*ori: Now, with the new value "dariodariodario", the ## operator removes everything up to the last occurrence of "ori", leaving "o".
# #*ori: Here, the # operator removes the first occurrence of "ori", leaving "odariodario".
# %%ol*: With the new value, the %% operator removes everything after the last occurrence of "ol", leaving "dariodari".
# %ori*: Finally, the % operator removes everything after the first occurrence of "ori", leaving "dariodari".
