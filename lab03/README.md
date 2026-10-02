## Exercise 1
Googled Linux conditional statements to remind myself of the formatting: https://www.geeksforgeeks.org/linux-unix/conditional-statements-shell-script/

## Exercise 2
### GenAI used
Gemini 
### Prompts
How to create a timestamp in linux as a function
```
timestamp() {
        date +"%Y-%m-%d %T"
}
```
I was initially implementing it directly into the code and I was having trouble getting it to display how I wanted it. Then I recalled the use of functions mentioned in the lab today and felt this would be a good idea to create the timestamp as a function, in case it was used again at a later stage.
I shortened the snippet given to 'date +"%D %T"' this was much easier to implement as 

## Exercise 3
### GenAI used
Gemini

### Prompts
Entered "Modify the script so that the user can select which of the two behaviours s/he
wants: Writing to the screen or writing to a file (as implemented in below exercise) and then I included my previous code. 

I was initially given the following addition which seemed like excessive code for what I wanted to achieve, but it also helped remind me of what kind of format would be needed:
```
# Prompt the user for output target
echo ""
echo "Select output mode:"
echo "1) Write to screen"
echo "2) Write to logfile ($logfile)"
read -p "Enter choice (1 or 2): " choice

if [ "$choice" -eq 1 ]; then
        echo "$message"
elif [ "$choice" -eq 2 ]; then
        echo "$message" >> "$logfile"
        echo "Output appended to $logfile"
else
        echo "Invalid choice. Displaying on screen by default:"
        echo "$message"
fi
```
This snippet included "read -p ---" which reminded me of how this command works, so I managed to greatly reduce the code required to achieve the desired output.

I ensured that I used this lab sheet to refresh my memory of how certain linux commands work.
