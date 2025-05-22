# Network Scanner Bash Script

A Bash script designed to perform quick network scans on specified hosts. It prompts the user for input, calculates the target hosts, confirms the list with the user, and then executes a scan using `nmap`.

### Features
- Host Input: Prompts the user to enter the target hosts or IP ranges.
- Host Calculation: Processes the input to generate a list of target hosts.
- User Confirmation: Displays the calculated hosts and asks for user confirmation before proceeding.
- Quick Scan Execution: Performs a quick scan on the confirmed list of hosts using nmap.

### Prerequisites
- Unix-like system with Bash shell.
- Installed `nmap` Network scanning tool
  ```bash
    # Linux
    sudo apt-get install nmap
    # macOS (using Homebrew)
    brew install nmap
  ```

### Usage
 - Clone the Repository
 - Make the Script Executable `chmod +x main.sh`
 - Run the Script `./main.sh`

### Notes
- Use this script only on networks you have explicit permission to scan
