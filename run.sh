#!/bin/bash
source /etc/apache2/envvars
rm -R /app/*
bindfs -u www-data -g www-data /app-origin /app
exec apache2 -D FOREGROUND
