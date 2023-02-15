#!/bin/bash
echo "start the node application"
cd /app/mern-ap && pm2 start "ng serve --host 0.0.0.0" --name mern-app
