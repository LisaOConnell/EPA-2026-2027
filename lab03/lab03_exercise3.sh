#!/bin/bash

# this is a comment

# for loop to count to 10
for c in {1..5}; do
        echo "Count: $c"

        # if does not use == it uses -eq
        # note the spaces around if [ ]
        if [ $c -eq 3 ]; then
                echo "found the third item"
        fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
        echo "You didn't pass any paraemters to $0"
else
        echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"

# created logfile
logfile="lab3log.txt"

# created timestamp function
timestamp() {
        date +"%D %T"
}

# Prompt user to choose output mode
read -p "Write to screen (s) or file (f)? " mode

if [ ! -z "$1" ] && [ "$1" -gt "$ct" ]; then
        output="The maximum number of processes NOT exceeded ($ct)($(timestamp))"
else
        output="Maximum number of processes exceeded ($ct) ($(timestamp))"
fi

# Decide where to send $output based on user choice
if [ "$mode" = "f" ]; then
        echo "$output" >> "$logfile"
else
        echo "$output"
fi


