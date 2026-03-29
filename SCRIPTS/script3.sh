#!/bin/bash

echo "Directory Audit Report"
echo "----------------------"

# Array of directories to check
dirs=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Loop through directories
for dir in "${dirs[@]}"
do
    if [ -d "$dir" ]; then
        # Get permissions, owner, group
        perm=$(ls -ld $dir | awk '{print $1, $3, $4}')
        
        # Get directory size
        size=$(du -sh $dir 2>/dev/null | cut -f1)

        echo "$dir => Permissions: $perm | Size: $size"
    else
        echo "$dir => Directory not found"
    fi
done

echo ""
echo "--- Python Library Check ---"

# Check for Python library directory
if [ -d "/usr/lib/python3" ]; then
    py_dir=$(ls -d /usr/lib/python3* 2>/dev/null | head -n 1)
    
    echo "Found: $py_dir"
    
    py_perm=$(ls -ld $py_dir | awk '{print $1, $3, $4}')
    echo "Permissions: $py_perm"
else
    echo "Python library directory not found"
fi
