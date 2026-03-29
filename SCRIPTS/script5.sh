#!/bin/bash

echo "=== Open Source Manifesto Generator ==="

# Take user input
echo "Enter your name:"
read name

echo "Why do you support open source?"
read reason

echo "Your favorite open-source tool:"
read tool

# Get current date
today=$(date +"%Y-%m-%d")

# Create filename
filename="manifesto_$today.txt"

# Write to file
echo "----------------------------------------" > $filename
echo " Open Source Manifesto" >> $filename
echo "----------------------------------------" >> $filename
echo "Name      : $name" >> $filename
echo "Date      : $today" >> $filename
echo "Reason    : $reason" >> $filename
echo "Tool      : $tool" >> $filename
echo "" >> $filename
echo "Statement :" >> $filename
echo "I, $name, believe in the power of open source." >> $filename
echo "I support it because $reason." >> $filename
echo "I actively use tools like $tool to learn, share, and grow." >> $filename
echo "----------------------------------------" >> $filename

# Display output
echo ""
echo "Manifesto saved to $filename"
echo ""
cat $filename
