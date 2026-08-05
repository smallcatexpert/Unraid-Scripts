#!/bin/bash
#   _____  _             ____             _                   _____           _       _
#  |  __ \| |           |  _ \           | |                 / ____|         (_)     | |
#  | |__) | | _____  __ | |_) | __ _  ___| | ___   _ _ __   | (___   ___ _ __ _ _ __ | |_
#  |  ___/| |/ _ \ \/ / |  _ < / _` |/ __| |/ / | | | '_ \   \___ \ / __| '__| | '_ \| __|
#  | |    | |  __/>  <  | |_) | (_| | (__|   <| |_| | |_) |  ____) | (__| |  | | |_) | |_
#  |_|    |_|\___/_/\_\ |____/ \__,_|\___|_|\_\\__,_| .__/  |_____/ \___|_|  |_| .__/ \__|
#                                                   | |                        | |
#                                                   |_|                        |_|
#
echo Pulling latest version of image-maid
/usr/bin/wget https://raw.githubusercontent.com/Kometa-Team/ImageMaid/refs/heads/master/imagemaid.py -O /mnt/user/appdata/scripts/backup-plex/imagemaid.py
echo Starting image-maid
/mnt/user/appdata/scripts/backup-plex/python-venv/bin/python3 \
    /mnt/user/appdata/scripts/backup-plex/imagemaid.py
echo Finished image-maid
echo Pulling latest version of Plex Backup
/usr/bin/wget https://raw.githubusercontent.com/Drazzilb08/extra-scripts/refs/heads/main/backup_plex.sh -O /mnt/user/appdata/scripts/backup-plex/backup_plex.sh
echo Starting Plex Backup
/mnt/user/appdata/scripts/backup-plex/backup_plex.sh
echo Finished Plex Backup
