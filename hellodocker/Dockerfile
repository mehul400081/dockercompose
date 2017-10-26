FROM openjdk:8-jdk-alpine
COPY hello-docker-0.1.0.jar /hello-docker-0.1.0.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS  -Djava.security.egd=file:/dev/./urandom -jar /hello-docker-0.1.0.jar" ]