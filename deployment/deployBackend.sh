#!/bin/bash

# Change to the desired directory
cd /home/labiodev/labio/backend

# pull changes from main branch
git pull origin main

# Run the source command
source venv/bin/activate

# install packages and dependencies
pip install -r requirements.txt

# Perform the migrations
python manage.py migrate

# Run gunicorn
sudo systemctl restart gunicorn

