FROM tomcat:9

COPY target/devops-java-web-app.war /usr/local/tomcat/webapps/
