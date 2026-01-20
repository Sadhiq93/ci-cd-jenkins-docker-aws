FROM tomcat:9.0-jdk11
COPY target/jenkins_project.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

