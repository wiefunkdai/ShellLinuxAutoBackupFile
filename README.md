<p align="center">
  <img height="100px" src="https://i.imgur.com/QTGG2PP.png" align="center" alt="Stephanus Dai"/>
  <h1 align="center">ShellLinuxAutoBackupFile</h1>
  <p align="center">A simple helper script to backup all file and directory in GNU/Linux</p></p>
<p align="center">
  <img src="https://img.shields.io/badge/%20OS%20-%20All Linux%20-gray.svg?colorA=2C5364&colorB=0F2027&style=flat&logo=linux&logoColor=white"/>
  <img src="https://img.shields.io/badge/%20Type%20-%20Bash%20Script%20-gray.svg?colorA=2C5364&colorB=0F2027&style=flat"/>
  <img src="https://img.shields.io/badge/%20Method%20-%20CLI%20-gray.svg?colorA=2C5364&colorB=0F2027&style=flat"/>
</p>
<p align="center">
  <img alt="GitHub watchers" src="https://img.shields.io/github/watchers/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub forks" src="https://img.shields.io/github/forks/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub contributors" src="https://img.shields.io/github/contributors/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub issues" src="https://img.shields.io/github/issues/wiefunkdai/wiefunkdai">
  <img alt="GitHub Discussions" src="https://img.shields.io/github/discussions/wiefunkdai/ShellLinuxAutoBackupFile">
  <img alt="GitHub last commit (by committer)" src="https://img.shields.io/github/last-commit/wiefunkdai/ShellLinuxAutoBackupFile">
</p>
<p align="center">
    <a href="#use-bash-shell-script-linux-guidelines">Guide</a>
    ·
    <a href="https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/issues/new?assignees=&labels=bug&projects=&template=bug_report.yml">Report Bug</a>
    ·
    <a href="https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/issues/new?assignees=&labels=enhancement&projects=&template=feature_request.yml">Request Feature</a>
    ·
    <a href="https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/discussions/new?category=ideas&title=Suggest%20for%20ShellLinuxAutoBackupFile">Provide Feedback</a>
    ·
    <a href="https://github.com/wiefunkdai/ShellLinuxAutoBackupFile/discussions/new?category=q-a&title=Ask%20Question%20for%20ShellLinuxAutoBackupFile">Ask Question</a>
</p>

<p align="center">Love the project? Please consider <a href="https://opencollective.com/wiefunkdai">donating</a> or give :star: to help it improve!</p>
<p align="center">Copyright &copy; ID 2023 Stephanus Bagus Saputra &#40;<a href="https://www.stephanusdai.web.id">www.stephanusdai.web.id</a>&#41;<br>All rights reserved.</p>

***

## Use Bash Shell Script Linux Guidelines

## Feature:
1. Backup All Directory and File Path Selection
2. Backup Firebird/MySQL Database File
3. Auto Backup File with Schedule (Crontask) Linux

## How to install:
Copy and paste this commands to your terminal:

1. `cd /tmp`
3. `git clone https://github.com/wiefunkdai/ShellLinuxAutoBackupFile.git`
3. `cd ShellLinuxAutoBackupFile`
4. `sudo mkdir /opt/auto-backup`
5. `sudo cp bin/runner.sh /opt/auto-backup/runner.sh`
4. `cd /opt/auto-backup`
6. `sudo chmod +x runner.sh`
7. `sudo chown root:root runner.sh`

## Preparation:
Before continue, please open and edit this script according to your needs to your terminal:

`sudo vi /opt/auto-backup/runner.sh`


edit bellow script according to your needs:

`import1="0,(change with file source folder location)"`

`dirforsave="(change with the location of the backup folder)"`

`usersql=(username mysql)`

`userpass=(kata sandi mysql)`

`dbmysqlname="(nama database mysql)"`

`dirsavedsql="(mysql database backup folder location)"`

`dirfirebirdimport="(change with firebird database folder source location)"`

`dirfirebirdsaved="(change with the location of the firebird database backup folder)"`

`fbuser="(change with firebird database login name in here)"`

`fbpass="(change with database password in here)"`

## Create New Task Schedule for running script crontask.sh:
Copy and paste this commands to your terminal:

`sudo vi /etc/crontab`

End then insert bellow code at crontab window:

`00 00 * * * root /usr/bin/sh /opt/auto-backup/runner.sh > /tmp/crond-auto-backup.log`

At midnight, the computer will automatically back up your data.

## Preview of Crontask:
![preview](https://i.imgur.com/JUM4Kuv.png)

# Support the project

I open-source almost everything I can and try to reply to everyone needing help using these projects. Obviously, this takes time. You can use this service for free.

If you are using this project and are happy with it or just want to encourage me to continue creating stuff, there are a few ways you can do it:

- Giving proper credit on the GitHub Sponsors page. [![Static Badge](https://img.shields.io/badge/%20Sponsor%20-gray.svg?colorA=EAEAEA&colorB=EAEAEA&style=fat&logo=githubsponsors&logoColor=EA4AAA)](https://github.com/sponsors/wiefunkdai)
- Starring and sharing the project :star:
- You can make one-time donations via PayPal. I'll probably buy a coffee :coffee: or tea :tea: or cake :cake: <br>
  [![paypal.me/wiefunkdai](https://img.shields.io/badge/%20Donate%20Now%20-gray.svg?colorA=2C5364&colorB=0F2027&style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.me/wiefunkdai)
- It’s also possible to support mine financially by becoming a backer or sponsor through<br>
  [![opencollective.com/wiefunkdai](https://img.shields.io/badge/%20Donate%20Now%20-gray.svg?colorA=355C7D&colorB=2980B9&style=for-the-badge&logo=opencollective&logoColor=white)](https://www.opencollective.com/wiefunkdai)

However, I am available for hire. You can also give me career opportunities to help your business in developing the software you need. Please contact me at:<br>
[![wiefunk@stephanusdai.web.id](https://img.shields.io/badge/%20Send%20Mail%20-gray.svg?colorA=EA4335&colorB=93291E&style=for-the-badge&logo=gmail&logoColor=white)](mailto:wiefunk@stephanusdai.web.id)
[![t.me/wiefunkdai](https://img.shields.io/badge/%20Telegram%20-gray.svg?colorA=2C5364&colorB=0083B0&style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/wiefunkdai)
[![linkedin.com/in/wiefunkdai](https://img.shields.io/badge/%20LinkedIn%20-gray.svg?colorA=005AA7&colorB=004e92&style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/wiefunkdai)

## :pray: Thanks for your contribute and support! :heart_eyes: :heart:

> Any Questions & Other Supports? see [Support](https://github.com/wiefunkdai/.github/blob/master/SUPPORT.md) please.

<div align="center">

| Author | Description |
| :---: | :--- |
| [<img src="https://github.com/wiefunkdai.png?size=115" width=115><br><sub>@wiefunkdai</sub>](https://github.com/wiefunkdai) | <p align="left">• Name : Stephanus Bagus Saputra ( 戴 Dai 偉 Wie 峯 Funk ) <br> • Email : [wiefunk@stephanusdai.web.id](mailto:wiefunk@stephanusdai.web.id) <br> • Link : [https://stephanusdai.web.id](https://stephanusdai.web.id) </p><p align="center">[![](https://img.shields.io/badge/wiefunkdai-30363D?style=for-the-badge&logo=github&logoColor=#white)](https://github.com/wiefunkdai)</p> |

</div>

***

<p align="center">
    <a href="https://www.stephanusdai.web.id">Visit Website</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/issues/new/choose">Global Issues</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/discussions">Global Discussions</a>
    ·
    <a href="https://github.com/wiefunkdai/.github/wiki">Global Wiki</a>
</p>
<p align="center">
  Copyright &copy; ID 2023 by Stephanus Bagus Saputra &#40;<a href="https://www.stephanusdai.web.id">www.stephanusdai.web.id</a>&#41;<br>
  <a href="https://github.com/wiefunkdai/.github/blob/master/LICENSE.md"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Bsd-license-icon-120x42.svg/120px-Bsd-license-icon-120x42.svg.png" align="center"></a><br>
  All rights reserved.
</p>
