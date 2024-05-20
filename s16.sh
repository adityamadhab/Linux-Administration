#!/bin/bash

# Function to create a directory
create_directory() {
    echo "Enter directory name to create:"
    read dirname
    mkdir "$dirname"
    echo "Directory '$dirname' created successfully."
}

# Function to view all files in the current directory
view_files() {
    echo "Files in the current directory:"
    ls
}

# Function to rename a directory
rename_directory() {
    echo "Enter the current directory name:"
    read oldname
    echo "Enter the new directory name:"
    read newname
    mv "$oldname" "$newname"
    echo "Directory '$oldname' renamed to '$newname' successfully."
}

# Function to view all files starting with a specific character
view_files_starting_with() {
    echo "Enter the starting character to search:"
    read startchar
    echo "Files starting with '$startchar':"
    ls "$startchar"*
}

# Function to view all files and hidden files
view_all_files() {
    echo "All files and hidden files in the current directory:"
    ls -a
}

# Main menu
while true; do
    echo "Choose an operation:"
    echo "1. Create a directory"
    echo "2. View all files in the current directory"
    echo "3. Rename a directory"
    echo "4. View all files starting with a specific character"
    echo "5. View all files and hidden files"
    echo "6. Exit"

    read choice

    case $choice in
        1) create_directory ;;
        2) view_files ;;
        3) rename_directory ;;
        4) view_files_starting_with ;;
        5) view_all_files ;;
        6) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number between 1 and 6." ;;
    esac
done
