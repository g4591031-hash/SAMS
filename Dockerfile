FROM tomcat:9.0

# Remove default ROOT folder (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to Tomcat
COPY dist/SAMS.war /usr/local/tomcat/webapps/SAMS.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
