#  Reset 2FA - GitLab

An insanely practical shell script that resets a GitLab users two-factor by only knowing their username or email.
This implies you are an admin, and that your token has the scope `api` and possibly `sudo` (but correct me if I'm wrong). [Inspo](https://docs.gitlab.com/ee/api/users.html#disable-two-factor-authentication)

1. Download the script to your computer.
2. Write your GitLab URL and your token in the `2fa.sh` script.
3. Open Terminal nad navigate to where the script is located and run:
````bash
bash 2fa.sh <username>             #option 1
bash 2fa.sh <username@mail.com>    #option 2
sh 2fa.sh mike                     #option 1 with example user name
sh 2fa.sh mike@mail.com            #option 2 with example e-mail
````

If the user **already** has their 2fa disabled, the API returns following message, and you can of course ignore it and move on:
````
{"message":"400 Bad request - Two-factor authentication is not enabled for this user"}
````
