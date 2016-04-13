FROM alpine:3.2
RUN apk --update add openjdk7-jre
COPY ./sling.jar /sling/
CMD ["/usr/bin/java","-jar" ,"/sling/sling.jar"]
