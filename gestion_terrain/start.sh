#!/bin/bash

echo "=== Stopping existing containers ==="
docker-compose down 2>/dev/null
docker stop gestion_terrain mysql phpmyadmin 2>/dev/null
docker rm gestion_terrain mysql phpmyadmin 2>/dev/null

# Remove old volume if exists
docker volume rm gestion_terrain_dbdata 2>/dev/null || true

echo "=== Copying SQL file ==="
# Remove any existing terrain.sql
rm -rf terrain.sql 2>/dev/null

# Check for SQL file in multiple locations
if [ -f "/home/chouchene/Desktop/Stadium-Management/Base_Donnee/terrain.sql" ]; then
    cp /home/chouchene/Desktop/Stadium-Management/Base_Donnee/terrain.sql .
    echo "SQL file copied from Base_Donnee"
elif [ -f "terrain.sql" ]; then
    echo "SQL file already exists in current directory"
else
    echo "Error: terrain.sql not found!"
    echo "Please copy terrain.sql to the current directory"
    exit 1
fi

echo "=== Checking for local MySQL services ==="
sudo systemctl stop mysql 2>/dev/null || true
sudo systemctl stop mariadb 2>/dev/null || true

echo "=== Building and starting with Docker Compose ==="
# First build the image
docker-compose build

# Start MySQL first and wait for it
echo "Starting MySQL database..."
docker-compose up -d mysql

echo "Waiting for MySQL to initialize (40 seconds)..."
sleep 40

# Check if MySQL is ready
echo "Checking MySQL status..."
if docker-compose exec mysql mysql -uroot -proot -e "SELECT 1" 2>/dev/null; then
    echo "MySQL is ready!"
else
    echo "MySQL is still starting, waiting more..."
    sleep 20
fi

# Now start the other services
echo "Starting application and phpMyAdmin..."
docker-compose up -d

echo "=== Application is starting ==="
echo "Please wait 30 seconds for everything to be ready..."
sleep 30

echo ""
echo "=== Application URLs ==="
echo "Web App:     http://localhost:8901/gestion_terrain/Views/Login.jsp"
echo "phpMyAdmin:  http://localhost:8902"
echo "MySQL:       localhost:8900 (user: root, password: root)"
echo ""
echo "Default login: admin@terrain.com / admin123"
echo ""
echo "To view logs: docker-compose logs -f"
echo "To stop:      docker-compose down"
