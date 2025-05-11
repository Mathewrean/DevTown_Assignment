#!/bin/bash

echo "Welcome to Simple Nmap Bash Scanner"

read -p "Enter the target IP or domain: " target

# Sanitize filename by replacing slashes or spaces with underscores
safe_target=$(echo "$target" | tr '/ ' '__')

filename="results/${safe_target}_scan.txt"
mkdir -p results

echo "Scanning host: $target"
echo "Results will be saved in $filename"

# Ping Scan
echo "Running Ping Scan..." | tee -a "$filename"
nmap -sn "$target" | tee -a "$filename"

# Port Scan (all ports)
echo -e "\nRunning Port Scan (all ports)..." | tee -a "$filename"
nmap -p- "$target" | tee -a "$filename"

# OS Detection and Service Version Scan
echo -e "\nRunning OS Detection and Service Version Scan..." | tee -a "$filename"
nmap -A "$target" | tee -a "$filename"

echo -e "\nScan completed. Check the file: $filename"
