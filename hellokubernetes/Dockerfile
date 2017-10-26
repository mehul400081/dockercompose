FROM openjdk:8-jdk-alpine
COPY hello-kubernetes-0.2.0.jar /hello-kubernetes-0.2.0.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS  -Djava.security.egd=file:/dev/./urandom -jar /hello-kubernetes-0.2.0.jar" ]