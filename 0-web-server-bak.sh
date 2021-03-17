#!/bin/bash
#Переходим в каталог
cd /tmp/dz_web_server

#Переключаемся на нашу ветку
#git checkout main

#Добавлем весь каталог в отслеживание
git add .
git commit -m "Добавлены инстркции для репозитория dz_web_server"
git branch -M main 

#Отправляем изменения
git push -u origin main

#запускать скрипт каждый 3й день в 01:00
#crontab -e
#0 1 3 * * /tmp/dz_web_server/0-web-server-bak.sh
