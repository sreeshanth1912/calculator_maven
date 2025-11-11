#Use an official Java runtime as  a parent image
FROM tomcat:9-jdk11

#copy the built WAR file to the Tomcat webapps directory
COPY **/*.war /usr/local/tomcat/webapps/
#Expose the port Tomcat is running on
#Expose 8080
#Start Tomcat server
#CMD ["catalina.sh","run"]
