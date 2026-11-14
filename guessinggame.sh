
#!/usr/bin/env bash

# Guessing Game Project
# Count the files in the current directory

function count_files {
    find . -maxdepth 1 -type f | wc -l
}

function guessing_game {
    local correct_answer=$(count_files)
    local guess

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while true
    do
        read -p "Enter your guess: " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        if [[ $guess -lt $correct_answer ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $correct_answer ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations!"
            echo "You guessed the correct number of files!"
            break
        fi
    done
}

guessing_game



