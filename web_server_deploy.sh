#!/bin/bash
#Переходим в каталог
cd /home/adminroot/dz_web_server

#Переключаемся на нашу ветку main
git checkout main

#Скачиваем изменения
git pull

#запускать скрипт каждый 3й день в 01:00
#crontab -e
#0 1 3 * * /home/adminroot/dz_web_server/web_server_bak.sh
