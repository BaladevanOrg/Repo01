FROM tomcat
    RUN apt update -y && apt install default-jdk -y
    VOLUME /tmp
    ENV CATALINA_HOME /usr/local/tomcat
    RUN chmod -R 777 $CATALINA_HOME/webapps
    COPY /home/vsts/work/1/a/target/P1BankApplicationWeb-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/bank.war
    EXPOSE 8080
    CMD ["catalina.sh","run"]
