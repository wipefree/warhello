FROM tomcat:9.0.111-jre21-temurin-jammy
WORKDIR /tmp/prj/
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war
