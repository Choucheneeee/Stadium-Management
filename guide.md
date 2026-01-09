# Gestion Terrain JEE Application

A Java JEE web application for managing sports field reservations, complaints, and user accounts.

## Prerequisites

Before running this project, ensure you have the following installed:

- **Docker** (version 20.10+)
- **Docker Compose** (version 2.0+)
- **Git** (for cloning the repository)

## Project Structure

```
gestion-terrain-jee/
├── gestion_terrain/          # Main application directory
│   ├── Dockerfile           # Docker configuration for Tomcat
│   ├── docker-compose.yml   # Multi-container setup
│   ├── gestion_terrain.war  # Compiled web application
│   ├── pom.xml              # Maven configuration
│   ├── terrain.sql          # Database schema
│   ├── src/                 # Source code
│   └── WebContent/          # Web resources
├── Base_Donnee/             # Database backups
│   └── terrain.sql          # Original database schema
└── README.md               # This file
```

## Quick Start Guide

### Method 1: Using Docker Compose (Recommended)

1. **Navigate to the project directory:**
   ```bash
   cd gestion-terrain-jee/gestion_terrain
   ```

2. **Start the application:**
   ```bash
   docker compose up --build
   ```

3. **Access the application:**
   - Web Application: http://localhost:8901/gestion_terrain/Views/Login.jsp
   - phpMyAdmin: http://localhost:8902
   - MySQL Database: localhost:8900

### Method 2: Using Provided Scripts

1. **Make the scripts executable:**
   ```bash
   cd gestion-terrain-jee/gestion_terrain
   chmod +x start.sh stop.sh
   ```

2. **Start the application:**
   ```bash
   ./start.sh
   ```

3. **Stop the application:**
   ```bash
   ./stop.sh
   ```

## Application URLs

| Service | URL | Port | Credentials |
|---------|-----|------|-------------|
| Web App | http://localhost:8901/gestion_terrain/Views/Login.jsp | 8901 | See below |
| phpMyAdmin | http://localhost:8902 | 8902 | root/root |
| MySQL | localhost:8900 | 8900 | root/root |

## Default Login Credentials

The database is pre-populated with these users:

1. **Admin User:**
   - Email: `admin@terrain.com`
   - Password: `admin123`

2. **Regular User:**
   - Email: `user@terrain.com`
   - Password: `user123`

3. **Test User:**
   - Email: `chouchene@test.com`
   - Password: `password`

## Troubleshooting

### Common Issues

1. **Port already in use:**
   ```bash
   # Check what's using port 8900, 8901, or 8902
   sudo lsof -i :8900
   sudo lsof -i :8901
   sudo lsof -i :8902
   
   # Or stop local MySQL if running
   sudo systemctl stop mysql
   sudo systemctl stop mariadb
   ```

2. **Docker Compose not found:**
   ```bash
   # Use docker compose (with space) instead of docker-compose (with dash)
   docker compose up --build
   ```

3. **Application not accessible:**
   ```bash
   # Check if containers are running
   docker ps
   
   # Check application logs
   docker compose logs gestion_terrain
   
   # Check database logs
   docker compose logs mysql
   ```

4. **Database connection issues:**
   ```bash
   # Test database connection
   docker exec mysql mysql -uroot -proot -e "SHOW DATABASES;"
   ```

### Reset Everything

If you encounter issues, reset everything:

```bash
cd gestion-terrain-jee/gestion_terrain

# Stop and remove all containers
docker compose down

# Remove volumes (will delete all data)
docker volume rm gestion_terrain_dbdata

# Rebuild and start fresh
docker compose up --build
```

## Application Features

- **User Registration & Login**: Secure user authentication
- **Admin Panel**: Manage users, reservations, and complaints
- **Reservation System**: Book sports fields by date and time
- **Complaint Management**: Submit and track complaints
- **User Profiles**: Update personal information

## Technical Stack

- **Backend**: Java JEE (Servlets, JSP)
- **Frontend**: HTML, CSS, JavaScript, JSP
- **Database**: MySQL 8.0
- **Application Server**: Apache Tomcat 9
- **Containerization**: Docker & Docker Compose

## Development

### Building from Source

If you need to rebuild the WAR file:

```bash
cd gestion-terrain-jee/gestion_terrain

# Using Maven (if available)
mvn clean package

# The WAR file will be in target/gestion_terrain.war
cp target/gestion_terrain.war .
```

### Database Schema

The database includes three main tables:

1. **compte**: User accounts with authentication
2. **reclamation**: User complaints and issues
3. **reservation**: Field reservations

### Modifying the Application

1. Make changes to the source code in `src/` directory
2. Rebuild the WAR file using Maven
3. Update the Docker image:
   ```bash
   docker compose build mywebapp
   docker compose up -d
   ```

## Docker Commands Cheat Sheet

```bash
# Start all services
docker compose up --build

# Start in detached mode
docker compose up -d --build

# Stop all services
docker compose down

# View logs
docker compose logs -f
docker compose logs gestion_terrain
docker compose logs mysql

# Access container shell
docker exec -it gestion_terrain sh
docker exec -it mysql mysql -uroot -proot

# Rebuild specific service
docker compose build mywebapp

# Remove all containers and volumes
docker compose down -v
```

## Project Configuration Files

### Dockerfile
```dockerfile
FROM tomcat:9.0-jdk11-openjdk-slim
COPY gestion_terrain.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
```

### docker-compose.yml
```yaml
version: '3.8'

services:
  mysql:
    image: mysql:8.0
    container_name: mysql
    hostname: mysql
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: terrain
      MYSQL_ROOT_HOST: '%'
    ports:
      - "8900:3306"
    volumes:
      - ./terrain.sql:/docker-entrypoint-initdb.d/terrain.sql
    command: --default-authentication-plugin=mysql_native_password
      
  mywebapp:
    build: .
    container_name: gestion_terrain
    ports:
      - "8901:8080"
    depends_on:
      - mysql
    links:
      - mysql
    
  phpmyadmin:
    image: phpmyadmin:latest
    container_name: phpmyadmin
    depends_on:
      - mysql
    environment:
      PMA_HOST: mysql
      PMA_PORT: 3306
      PMA_ARBITRARY: 1
    ports:
      - "8902:80"
```

## Support

If you encounter any issues:

1. Check the logs: `docker compose logs`
2. Verify containers are running: `docker ps`
3. Ensure ports are available
4. Try resetting with: `docker compose down -v && docker compose up --build`

## License

This project is for educational purposes.

---

**Note**: This application runs on custom ports (8900-8902) to avoid conflicts with other services. Adjust the ports in `docker-compose.yml` if needed.