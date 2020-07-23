<h1 align="center">
   <img src="assets/logo.png">
   
</h1>

# <center>BashOmatic</center>

## Overview
Automation using Bash and Python script

### Project
- [FolderOrganizer](https://github.com/mirsahib/Project-BashOmatic/blob/master/Bash/folderOrganizer.sh) :  Automatically organized `~/Downloads` folder in Ubuntu OS

### How to run FolderOrganizer

1. Create a folder called Scripts in you `home/username` directory 
2. Copy the file folderOrganizer.sh to `home/username/Scripts` directory
3. From terminal run 
```
crontab -e
```
4. Add below code
```
# m h d mon week command
0 12 * * 1 /home/username/Scripts/folderOrganizer.sh
```
the code means 0 min 12 hours,monday of every week
5. (Option) If you want to send feedback message to your gmail account add this code above step 4

```
MAILFROM=username@gmail.com
MAILTO=username@gmail.com
```
NB: You need to have ssmtp configure to send feedback to your gmail.

Follow [this](https://www.digitalocean.com/community/questions/how-to-send-emails-from-a-bash-script-using-ssmtp), [this](https://unix.stackexchange.com/questions/202934/how-to-send-mail-to-gmail-account-using-ssmtp),[this](https://galleryserverpro.com/use-gmail-as-your-smtp-server-even-when-using-2-factor-authentication-2-step-verification/#:~:text=Enable%20SMTP%20server%20with%202,your%20password%20and%20your%20phone.) link to install and configure ssmtp

