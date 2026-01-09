#!/bin/bash
echo "Stopping containers..."
docker stop gestion_terrain mysqldb phpmyadmin 2>/dev/null
docker rm gestion_terrain mysqldb phpmyadmin 2>/dev/null
echo "Containers stopped and removed."
