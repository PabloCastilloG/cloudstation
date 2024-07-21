#!/bin/bash

# Update the system
echo "Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Clean up unnecessary packages and cache
echo "Removing unnecessary packages and cleaning up cache..."
sudo apt autoremove -y && sudo apt autoclean -y

# Check disk usage
echo "Checking disk usage..."
df -h

# Check active users
echo "Listing currently logged in users..."
who

# Check CPU processes
echo "Displaying the top 5 CPU consuming processes..."
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

# Redirect the output to a file
{
    echo "---- System Update ----"
    sudo apt update -y && sudo apt upgrade -y
    echo

    echo "---- Package Cleanup ----"
    sudo apt autoremove -y && sudo apt autoclean -y
    echo

    echo "---- Disk Usage ----"
    df -h
    echo

    echo "---- Active Users ----"
    who
    echo

    echo "---- Top 5 CPU Consuming Processes ----"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
} > maintenance_output.txt

echo "Maintenance tasks completed. The output has been saved to maintenance_output.txt."