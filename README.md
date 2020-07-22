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
0 12 * * 1 /home/username/Scripts/folderOrganizer.sh

```
5. (Option) If you want to send feedback message to your gmail account add this code above step 4

```
MAILFROM=username@gmail.com
MAILTO=username@gmail.com
```
NB: You need to have ssmtp configure to send feedback to your gmail.

Follow [this](https://www.digitalocean.com/community/questions/how-to-send-emails-from-a-bash-script-using-ssmtp), [this](https://unix.stackexchange.com/questions/202934/how-to-send-mail-to-gmail-account-using-ssmtp) link to install and configure ssmtp

