FROM openjdk:11.0.13-jre-slim-buster

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    APPLI_SLEEP=0 \
    JAVA_OPTS="-Xmx512m"

CMD echo "The application will start in ${APPLI_SLEEP}s..." && \
    sleep ${APPLI_SLEEP} && \
    java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar

EXPOSE 8080

ADD target/*.jar /app.jar
