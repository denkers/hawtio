FROM java:8
VOLUME /tmp
ADD hawtio-app-2.5.0.jar app.jar
ADD *.properties /home/
EXPOSE 8081
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","-Dpath.file=file:////home/","/app.jar"]
