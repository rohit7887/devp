# Run Time Tomcat Env Image.

FROM tomcat:9.0



MAINTAINER rohit <rohitrathod@gmail.com>



COPY VaadinExample-1.0.war   /var/lib/tomcat9/webapps/
COPY VaadinExample-1.0.war  /usr/local/tomcat/webapps/
