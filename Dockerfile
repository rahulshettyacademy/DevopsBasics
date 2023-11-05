FROM tomcat:9
COPY ./webapp.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

Babajide was testing something...here!

Adding to this so I can be more happy with my results.