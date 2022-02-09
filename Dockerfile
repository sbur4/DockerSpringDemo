FROM openjdk:8

ENV APP_JAR_NAME="DockerSpringDemo-1.0-SNAPSHOT.jar"
ENV JAVA_OPTS="-Xms512m -Xmx512m"
ENV SPRINGBOOT_ARGS="--spring.config.location=classpath:/,/tmp/springboot/config"

WORKDIR /tmp
COPY /build/libs/ .

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -jar $APP_JAR_NAME $SPRINGBOOT_ARGS
