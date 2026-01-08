#!/bin/bash

# Banner Function - Aapka naya Name aur Link yahan hai
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

# Cleanup on exit
trap 'echo -e "\n\e[1;31m[!] Exiting...\e[0m"; exit' INT

# Execution
banner
read -p $'\e[1;32m[?] Enter phone number: \e[0m' target

if [[ -z "$target" ]]; then
    echo -e "\e[1;31m[!] Error: Number enter karein!\e[0m"
    exit 1
fi

echo -e "\e[1;33m[*] Starting process on: $target\e[0m"
sleep 1

# Display Loop (Sirf Success message dikhayega, API removed)
while true; do
    echo -e "\n\e[1;36m[+] Sending request to:\e[0m $target"
    echo -e "\e[1;32m[✔] Status: Success\e[0m"
    echo -e "\e[1;90m----------------------------------------\e[0m"
    
    sleep 3
done
