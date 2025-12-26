FROM tomcat:9.0.111-jre21-temurin-jammy
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
