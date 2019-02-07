FROM tomcat:8.0

EXPOSE 8080

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

CMD["catalina.sh", "run"]
