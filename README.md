# Gitlab-2FA-Reset-Script
An insanely practical bash script that resets a GitLab users two-factor by only knowing their username.

Write your GitLab domain in the `2fa.sh` script, pluss your token. The run
````bash
bash 2fa.sh <username>
bash 2fa.sh mike
USER="$1"

If the user already has their 2fa disabled, the API returns following message:
````
{"message":"400 Bad request - Two-factor authentication is not enabled for this user"}
````
