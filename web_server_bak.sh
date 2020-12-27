#!/bin/bash
#Переходим в каталог
cd /home/adminroot/dz_web_server

#Переключаемся на нашу ветку
git checkout main

#Добавлем весь каталог в отслеживание
git add -A

git commit -m "Ежедневное обновление"

#Добавляем репозиторий на github.com
git remote add origin git@github.com:aboltykhov/dz_web_server.git

#Отправляем изменения
git push -u origin main

