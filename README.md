# Gitlab-2FA-Reset-Script
An insanely practical shell script that resets a GitLab users two-factor by only knowing their username or email.
This implies you are an admin, and that your token has the scope `api` and possibly `sudo` (but correct me if I'm wrong). [Inspo](https://docs.gitlab.com/ee/api/users.html#disable-two-factor-authentication)

1. Download the script to your computer.
2. Write your GitLab URL and your token in the `2fa.sh` script.
3. Syntax is as follows:
````bash
bash 2fa.sh <username>
bash 2fa.sh <username@mail.com>
sh 2fa.sh mike
sh 2fa.sh mike@mail.com
````

If the user already has their 2fa disabled, the API returns following message, and you can of course ignore it:
````
{"message":"400 Bad request - Two-factor authentication is not enabled for this user"}
````
