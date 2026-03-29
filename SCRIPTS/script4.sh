#!/bin/bash

# Check if arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <log_file_path> <keyword>"
    exit 1
fi

logfile=$1
keyword=$2

# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Error: File not found!"
    exit 1
fi

count=0

# Read file line by line
while read -r line
do
    if echo "$line" | grep -i "$keyword" > /dev/null
    then
        count=$((count + 1))
    fi
done < "$logfile"

echo "Keyword '$keyword' found $count times in $logfile"

echo ""
echo "--- Last 5 matching lines ---"

# Show last 5 matching lines
grep -i "$keyword" "$logfile" | tail -n 5
