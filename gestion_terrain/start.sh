#!/bin/bash

# Stop and remove any existing containers
echo "=== Stopping existing containers ==="
docker-compose down 2>/dev/null
docker stop gestion_terrain mysqldb phpmyadmin 2>/dev/null
docker rm gestion_terrain mysqldb phpmyadmin 2>/dev/null

# Remove the terrain.sql file/directory if it exists
rm -rf terrain.sql 2>/dev/null

# Copy SQL file from backup location
echo "=== Copying SQL file ==="
if [ -f "/home/chouchene/Desktop/chouchene/gestion-terrain-jee/Base_Donnee/terrain.sql" ]; then
    cp /home/chouchene/Desktop/chouchene/gestion-terrain-jee/Base_Donnee/terrain.sql .
    echo "SQL file copied successfully"
else
    echo "Warning: SQL file not found at /home/chouchene/Desktop/chouchene/gestion-terrain-jee/Base_Donnee/terrain.sql"
    echo "Looking for SQL file in current directory..."
    if [ ! -f "terrain.sql" ]; then
        echo "Error: terrain.sql not found!"
        echo "Please place terrain.sql in the current directory"
        exit 1
    fi
fi

# Stop any local MySQL service that might be using port 3306
echo "=== Checking for local MySQL services ==="
sudo systemctl stop mysql 2>/dev/null
sudo systemctl stop mariadb 2>/dev/null

# Build and start using docker-compose
echo "=== Building and starting with Docker Compose ==="
docker-compose up --build
