FROM tomcat:9.0-jdk11-openjdk-slim

# Install wait-for-it script to wait for MySQL
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# Copy the WAR file
COPY gestion_terrain.war /usr/local/tomcat/webapps/

EXPOSE 8080

# Wait for MySQL to be ready, then start Tomcat
CMD ["/wait-for-it.sh", "mysql:3306", "--timeout=60", "--", "catalina.sh", "run"]
