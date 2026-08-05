#!/bin/bash
#  _   _                     _ _             _                  
# | | | |_ __  _ __ __ _  __| (_)_ __   __ _| |_ ___  _ __ _ __ 
# | | | | '_ \| '__/ _` |/ _` | | '_ \ / _` | __/ _ \| '__| '__|
# | |_| | |_) | | | (_| | (_| | | | | | (_| | || (_) | |  | |   
#  \___/| .__/|_|  \__,_|\__,_|_|_| |_|\__,_|\__\___/|_|  |_|   
#       |_|                                                     
echo Pulling latest version of upgradinatorr
/usr/bin/wget https://raw.githubusercontent.com/BZ00001/scripts/refs/heads/main/upgradinatorr/upgradinatorr.py -O /mnt/user/appdata/scripts/upgradinatorr/upgradinatorr.py
/mnt/user/appdata/scripts/upgradinatorr/python-venv/bin/python3 \
    /mnt/user/appdata/scripts/upgradinatorr/upgradinatorr.py
