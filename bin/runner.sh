#!/bin/bash
#-------------------------------------------------------
# Auto Backup MySQL, Firebird & File Folder Data
# 
# @author  Stephanus Bagus Saputra
#          ( 戴 Dai 偉 Wie 峯 Funk )
# @email   house@stephanusdai.web.id
# @link    http://www.stephanusdai.web.id
# @copyright Copyright (c) ID 2022 Stephanus Bagus Saputra
 
echo -e "-------------------------------------------"
echo -e "Auto Backup & Shutdown File Data"
echo -e "Scripting by Stephanus Bagus Saputra"
echo -e "Visit link http://www.stephanusdai.web.id"
echo -e "------------------------------------------\n"
 
# Log archive for history backup
logdata="/tmp/crontask.log"
 
# Source configuration directory for backup
# ex: /home/data/
import1="0,(change with file source folder location)"
dirforimport="$import1\n"
 
# Destination configuration director for backup
# (only one) selected folder for saved data.
# ex: /home/backup/
dirforsave="(change with the location of the backup folder)"
 
# Backup for MySQL
usersql=(change with mysql username)
userpass=(change with mysql password)
dbmysqlname="(change with mysql database name)"
daynowsql=$(date +%A)
# ex. /home/backup/mysql
dirsavedsql="(mysql database backup folder location)"
filesavedsql="${dirsavedsql}/${dbmysqlname}_${daynowsql}.sql"
 
# Processing MySQL Backup Database
echo -e "Backuping MySQL Data $dbmysql\n"
/usr/bin/mysqldump -u"$usersql" -p"$userpass" "$dbmysqlname" > "$filesavedsql"
 
 
# Stop firebird service requirement for backuping data
#appfirebird="firebird"
#if (( $(ps -ef | grep -v grep | grep "$appfirebird" | wc -l) > 0 )); then
#    echo "\nStop Firebird service!!!"
#    /bin/systemctl stop firebird
#fi
 
# ex. /home/data/firebird/
dirfirebirdimport="(change with firebird database folder source location)"
# ex. /home/backup/firebird/
dirfirebirdsaved="(change with the location of the firebird database backup folder)"
fbuser="(change with firebird database login name in here)"
fbpass="(change with database password in here)"
 
# Backup Firebird Database
find "$dirfirebirdimport" -type f -name "*.fdb" | while read fbfileimport; do
    daynow=$(date +%A)
    fbfilefullname=$(basename "$fbfileimport")
    fbfileext="${fbfilefullname##*.}"
    fbfilebasename="${fbfilefullname%.*}"
    fbfilenamesaved="${fbfilebasename}_${daynow}.fbk"
    fbfilebasepath="${fbfileimport##*$dirfirebirdimport}"
    fbpartsaved="$dirfirebirdsaved$fbfilebasepath"
    fbdirsaved="${fbpartsaved%$fbfilefullname}"
    fbfilesaved="$fbdirsaved$fbfilenamesaved"
 
    if [ ! -d "$fbdirsaved" ]; then
 echo -e "\nCreate directory backup for firebird database \n$fbdirsaved"
        echo -e "Create directory backup for firebird database \n$fbdirsaved" >> "$logdata"
        mkdir -p "$fbdirsaved"
    fi
 
    if [ -e "$fbfilesaved" ]; then
        echo -e "\nDeleting old backup firebird database file \n$fbfilesaved"
        echo -e "Deleting old backup firebird database file \n$fbfilesaved" >> "$logdata"
        rm -rf "$fbfilesaved"
    fi
 
    if [ ! -e "$fbfilesaved" ]; then
 echo -e "\nCreate Backup FBK Firebird Database \n$fbfileimport "
        echo -e "to directory \n$fbfilesaved\n"
        echo -e "Create Backup FBK Firebird Database \n$fbfileimport " >> "$logdata"
 echo -e "to directory \n$fbfilesaved\n" >> "$logdata"
        /opt/firebird/bin/gbak -b "$fbfileimport" "$fbfilesaved" -user "$fbuser" -passw "$fbpass"
    fi
done
 
# Get list file ready for processing
echo -e "$dirforimport" | grep -i -n "," | while read -r importdir; do
    for vmdirimports in $importdir; do
        vmdirimport="${vmdirimports##*,}"
        if [ -d "$vmdirimport" ]; then
            echo -e "Getting list from $vmdirimport"  >> "$logdata"
 
            find "$vmdirimport" -type f -name "*.*" | while read vmfileimport; do
                basedirname=$(dirname "$vmfileimport")
                fullname=$(basename "$vmfileimport")
                extension="${fullname##*.}"
                filename="${fullname%.*}"
                vmbasepath="${vmfileimport##*$vmdirimport}"
                vmfilesave="$dirforsave$vmbasepath"
                vmsavedir="${vmfilesave%$fullname}"
                flatfile="${fullname%-flat*}"
 
                if [ ! -d "$dirforsave" ]; then
                    echo -e "\n\nError: Failed directory backup"
                    echo -e "Please check directory backup to be continue.."
                    echo -e "\nError: Failed directory backup"  >> "$logdata"
      echo -e "Please check directory backup to be continue.." >> "$logdata"
                    exit 0
                else
                    if [ ! -d "$vmsavedir" ]; then
   echo -e "\nCreate directory $vmsavedir\n"
                        echo -e "Create directory $vmsavedir" >> "$logdata"
                        mkdir -p "$vmsavedir"
                    fi
 
                    if [ -e "$vmfilesave" ]; then
   echo -e "\nRemoving old data backup \n$vmfilesave"
                        echo -e "Removing old data backup \n$vmfilesave" >> "$logdata"
                        rm -rf "$vmfilesave"
                    fi
 
                    if [ ! -e "$vmfilesave" ]; then
   echo -e "\nBackuping data \nfrom $vmfileimport \nto $vmfilesave"
                        echo -e "Backuping data \nfrom $vmfileimport \nto $vmfilesave" >> "$logdata"
                        cp -rf "$vmfileimport" "$vmfilesave"
                    fi
                fi
            done
        fi
    done
done
 
# Remove tag at bellow to shutdown computer
#/sbin/poweroff