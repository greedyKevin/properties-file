FROM java:8
VOLUME /tmp
#ADD start-stable.jar app.jar
#RUN sh -c 'touch /app.jar'
#ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /hfs-stable.jar" ]
