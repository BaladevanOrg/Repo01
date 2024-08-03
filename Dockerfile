FROM tomcat
    RUN apt update -y && apt install default-jdk -y
    VOLUME /tmp
    LABEL author=balaadmin
    RUN chmod -R 777 $CATALINA_HOME/webapps
    ENV CATALINA_HOME /usr/local/tomcat
    COPY /home/vsts/work/1/a/target/P1BankApplicationWeb-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/
    EXPOSE 80
    CMD ["catalina.sh","run"]
