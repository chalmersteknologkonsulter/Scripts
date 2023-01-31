#!/bin/bash

# Change to the desired directory
cd /home/labiodev/labio/frontend

# pull changes from main branch
git pull origin main

# run npm install
npm install

# run build
npm run build

# move build folder to /var/www/html
cp -r /dist/labio-frontend/* /var/www/html/