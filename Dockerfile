# Run Time Tomcat Env Image.

FROM tomcat:8.0



MAINTAINER rohit <rohitrathod@gmail.com>



COPY VaadinExample-1.0.war  /usr/local/tomcat/webapps/
