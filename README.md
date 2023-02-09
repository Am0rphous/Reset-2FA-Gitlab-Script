# Gitlab-2FA-Reset-Script
An insanely practical bash script that resets a GitLab users two-factor by only knowing their username.

Write your GitLab URL and your token in the `2fa.sh` script. The run:
````bash
bash 2fa.sh <username>
bash 2fa.sh mike
````

If the user already has their 2fa disabled, the API returns following message:
````
{"message":"400 Bad request - Two-factor authentication is not enabled for this user"}
````
