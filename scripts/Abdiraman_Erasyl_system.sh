#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Erasyl"
echo "Surname: Abdiraman"
echo "Group: IT-2310"
echo "Student ID: 3833"

echo ""
echo "=============================="
echo "System Information"
echo "=============================="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -a)"
echo "Disk Usage:"
df -h
echo "Memory Usage:"
free -h

echo ""
if [ -f "$(dirname "$0")/../Abdiraman_Erasyl_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
