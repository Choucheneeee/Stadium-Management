#!/bin/bash
echo "Stopping containers..."
docker-compose down 2>/dev/null
docker stop gestion_terrain mysql phpmyadmin 2>/dev/null
docker rm gestion_terrain mysql phpmyadmin 2>/dev/null
echo "Containers stopped and removed."
