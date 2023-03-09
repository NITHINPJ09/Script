#!/bin/bash

cd /var/www/Ease_Staging/EASE/api-v2
file=$(cat seederCommands.txt)

for line in $file
do
    php artisan db:seed --class=$line
done
