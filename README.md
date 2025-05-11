# Simple Nmap Bash Scanner

## Overview
This is a beginner-friendly automated network scanning tool using **Nmap** and **Bash scripting**. It performs a series of basic scans on a target IP address or domain and saves the results in a structured format. Ideal for students or cybersecurity beginners looking to understand how network reconnaissance is done.

## Features
- Accepts a target IP or domain.
- Runs:
  - Ping scan
  - Full port scan
  - OS and service version detection
- Sanitizes target input to avoid invalid filenames.
- Automatically saves scan results in the `results/` directory.

## How It Works
1. User runs `scan.sh`.
2. Script prompts for a target IP or domain.
3. Performs:
   - Ping Scan: Checks if the host is online.
   - Port Scan: Scans all ports.
   - OS & Service Version Detection: Attempts to identify the OS and running services.
4. All output is saved to a timestamped `.txt` file in the `results/` folder.

## Usage

### Prerequisites
- Linux system with Bash
- `nmap` installed

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/nmap-bash-scanner.git
   cd nmap-bash-scanner
2. Make the script executable
   ```bash
   ./scan.sh
3.Run the script:
```bash
./scan.sh

