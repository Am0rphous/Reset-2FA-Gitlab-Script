#!/bin/bash

USER="$1"

TOKEN="your secret token here"
URL="example.gitlab.com"

#we need to save the users ID. Using the username won't work.
ID=$(curl -s --header "PRIVATE-TOKEN: $TOKEN" -H "Content-Type: application/json" "$URL/api/v4/users?username=$USER"| jq -r '.[].id')

#The command that actually resets the 2fa for an user id
curl -s --request PATCH --header "PRIVATE-TOKEN: $TOKEN" "$URL/api/v4/users/$ID/disable_two_factor"

echo ""
echo ".. 2fa for '$1' has been reset."
