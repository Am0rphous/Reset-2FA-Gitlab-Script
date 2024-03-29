#!/bin/bash
#credit: github.com/Am0rphous
#09.02.23
#OS: macOS

USER="$1"
TOKEN="your secret token here"
URL="https://example.gitlab.com"

#Checking if the variable is empty
if [[ -z $1 ]]; then
    echo ""
    echo " .. Gief me username or mail plz 🤌🏼🤌🏼"
    echo ""
else
    #removing everything after @
    USER=$(echo $USER | awk -F "@" '{print $1}')
    
    #we need to save the users ID. Using simply the username won't work.
    ID=$(curl -s --header "PRIVATE-TOKEN: $TOKEN" -H "Content-Type: application/json" "$URL/api/v4/users?username=$USER"| jq -r '.[].id')

    #The command that actually resets the 2fa with an user id
    curl -s --request PATCH --header "PRIVATE-TOKEN: $TOKEN" "$URL/api/v4/users/$ID/disable_two_factor"

    echo ""
    echo ".. 2fa for '$1' has been reset👍🏼"
fi
