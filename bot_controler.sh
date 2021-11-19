#!/usr/bin/env bash
echo -e "
██████╗░░█████╗░████████╗
██╔══██╗██╔══██╗╚══██╔══╝
██████╦╝██║░░██║░░░██║░░░
██╔══██╗██║░░██║░░░██║░░░
██████╦╝╚█████╔╝░░░██║░░░
╚═════╝░░╚════╝░░░░╚═╝░░░" | pv -qL 500 | lolcat
echo
echo -e "░░░░░░░░░░▄▄▄▄▄▄▄░░░░░░░░░░
░░░░░░▄▄▀▀░░░░░░░▀▀▄▄░░░░░░
░░░░▄▀░░░░░░░░░░░░░░░▀▄░░░░
░░░▄▀░░░▄▄▄▄▄▄▄▄▄▄▄░░░░█░░░
░░█░░▄███████████████▄░░█░░
░█░░▄██▀░▄▄▀███▀▄▄░▀███░░█░
░█░░▀█████████████████▀░░█░
░█░░░░▀▀████████████▀░░░░█░
░░█░░░░░░░░▀▀▀▀▀░░░░░░░▄▀░░
░░░▀▀▄▄▄▄░░░░░░░░░▄▄▄▀▀░░░░
░░▄██▀▄▄▄█▀▀▀▀▀▀▀█▄▄▄▀██▄░░
░▄▀██░░░░░▀▀▀▀▀▀▀░░░░░██▀▄░
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██░░░░░░░░░░░░░░░░░██░░█
█░░██▄░░░░░░░░░░░░░░░▄██░░█
▀▀▄█░█▄▄▄▄░░░░░░░▄▄▄▄█░█▄▀▀
░░░░░░░░░█▄▄▄▄▄▄▄█░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░

" | pv -qL 300 | lolcat
printf "\033[1;31m(1) To start message \033[0m\n"
printf "\033[1;31m(2) to reset bot \033[0m\n"
printf "\033[1;31m(3) to exit \033[0m\n"
echo
printf "\033[1;36mENTER YOUR OPTION HEAR==> \033[0m"
read opt
if [[ $opt == '1' || $opt == '01' ]]; then
echo
printf "\033[1;36mENTER YOUR BOT TOKEN==> \033[0m"
read token
printf "\033[1;36mENTER CHAT_ID==> \033[0m"
read id
while true; do
printf "\033[1;34mMESSAGE==> \033[0m"
read message
message=${message//" "/%20}
curl "https://api.telegram.org/bot${token}/sendMessage?chat_id=${id}?&text=${message}" > /dev/null 2>&1
echo
printf "\033[1;31mMESSAGE SENDED \033[0m\n"
done

elif [[ $opt == '2' || $opt == '02' ]]; then
echo
printf "\033[1;36mENTER YOUR NEW BOT TOKEN==> \033[0m"
read Ntoken
printf "\033[1;36mENTER YOUR NEW CHAT_ID==> \033[0m"
read Nid
echo
echo -e "CHANGED OLD BOT TOKEN AND CHAT_ID TO NEW" | pv -qL 300 | lolcat
echo
printf "\033[1;36mTO START CHAT WITH NEW TOKEN AND ID [Y/N]==> \033[0m"
read yn
if [[ $yn == 'Y' || $yn == 'y' ]]; then
echo
while true; do
printf "\033[1;34mMESSAGE==> \033[0m"
read mess
mess=${mess//" "/%20}
curl curl "https://api.telegram.org/bot${Ntoken}/sendMessage?chat_id=${Nid}?&text=${mess}" > /dev/null 2>&1
echo
printf "\033[1;31mMESSAGE SENDED \033[0m\n"
done

elif [[ $yn == 'N' || $yn == 'n' ]]; then
echo
printf "\033[1;34mYOU ARE EXITED \033[0m\n"
exit 1

else
printf "\033[1;31mPLEASE SELECT A VALID OPTION \033[0m\n"
fi

elif [[ $opt == '3' || $opt == '03' ]]; then
echo
printf "\033[1;36mYOU ARE EXITED \033[0m\n"
exit 1

else
printf "\033[1;36mPLEASE SELECT A VALID OPTION \033[0m\n"
fi


