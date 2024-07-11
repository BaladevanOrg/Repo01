FROM tomcat
    RUN apt-get -y update && apt-get -y install openjdk
    VOLUME /tmp
    RUN chmod -R 777 $CATALINA_HOME/webapps
    ENV CATALINA_HOME /usr/local/tomcat
    COPY target/P1BankApplicationWeb-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/bank.war
    EXPOSE 8080
    CMD ["catalina.sh","run"]
