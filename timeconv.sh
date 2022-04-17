#!/bin/bash

#should take input from stdin
#output to stdout

#each line find 12 hour format time with regex and replaci it for 24 hour

echo "The event starts at 03:25PM and 11:11AM" | sed -E "s/(1[0-2]|0?[0-9]):(..)([A][M])/\1:\2/g" | sed -E "s/(1[0-2]|0?[0-9]):(..)([P][M])/$(\1+12):\2/g"

#should return The event starts at 15:25 and 11:11
#problem is $(\1+12), cant add 12 to str
