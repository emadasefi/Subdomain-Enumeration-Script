#!/bin/bash

# Colors
Cyan='\033[0;36m'
NC='\033[0m'


# Print the ASCII art and message
echo -e "${Cyan}
 __.   .    .                   .___                    ,             __.          , 
(__ . .|_  _| _ ._ _  _.*._     [__ ._ . .._ _  _ ._._.-+-* _ ._     (__  _.._.*._-+-
.__)(_|[_)(_](_)[ | )(_]|[ )____[___[ )(_|[ | )(/,[ (_] | |(_)[ )____.__)(_.[  |[_)| 
                                                                                |    
"
echo -e "
  - Subdomain Enumeration Script
  - This script enumerates subdomains for a given domain using a provided wordlist and checks if the subdomains are reachable.
  - v1.1 / Emad Asefi / @emadasefi / emad.asefi@gmail.com
  ${Cyan}||||||||||||||||||||||||||||||||||||||||||||||||||||||||
${NC}"




# Check if the user provided a domain and a file
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <domain> <wordlist_file>"
    exit 1
fi

DOMAIN=$1
WORDLIST_FILE=$2

# Check if the wordlist file exists
if [ ! -f "$WORDLIST_FILE" ]; then
    echo "File not found: $WORDLIST_FILE"
    exit 1
fi

# Print the header for the output table
echo "-----------------------------------------------------"
printf "| %-4s | %-30s | %-25s |\n" "Row" "Domain Name" "Status"
echo "-----------------------------------------------------"

ROW=1

# Read words from the file and check for subdomains
while IFS= read -r SUBDOMAIN; do
    FULL_SUBDOMAIN="$SUBDOMAIN.$DOMAIN"
    
    # Check if the subdomain is reachable using curl with a 5-second timeout
    if timeout 5 curl --silent --head "$FULL_SUBDOMAIN" > /dev/null; then
        STATUS="Exists"
        # Print the result in a formatted table row
        printf "| %-4d | %-30s | %-25s |\n" "$ROW" "$FULL_SUBDOMAIN" "$STATUS"
    fi
  
    ((ROW++))
done < "$WORDLIST_FILE"

echo "-----------------------------------------------------"
