#!/bin/bash

while true; do
    echo "MENU"
    echo "1. List of files."
    echo "2. Copying files."
    echo "3. Removing files."
    echo "4. Renaming files."
    echo "press [CTRL+C] TO EXIT"
    echo "Enter your choice: "
    read ch
    case "$ch" in
        1) 
            echo "The list of file names:"
            ls -l || echo "These are files";;
        2) 
            echo "Enter the old filename: "
            read ofile
            echo "Enter the new file name: "
            read nfile
            cp "$ofile" "$nfile" && echo "Copied successfully." || echo "Copy failed." ;;
        3) 
            echo "Enter the file name to remove: "
            read rfile
            rm -f "$rfile" && echo "Successfully removed." ;;
        4) 
            echo "Enter the old file name: "
            read ofile
            echo "Enter the new file name: "
            read nfile
            mv "$ofile" "$nfile" && echo "The file $ofile renamed to $nfile." || echo "You can't rename the file." ;;
        *) 
            echo "Invalid option."
            echo "Enter correct choice." ;;
    esac
done
