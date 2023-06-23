FROM bellsoft/liberica-openjdk-alpine:17
RUN apk add curl
VOLUME /tmp
WORKDIR /app
COPY target/test-app-0.0.1-SNAPSHOT.jar /app/
#ADD --chown=15000:15000 'https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar' opentelemetry-javaagent.jar
#ENTRYPOINT ["java", "-javaagent:opentelemetry-javaagent.jar", "-jar", "test-app-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java", "-jar", "test-app-0.0.1-SNAPSHOT.jar"]

#docker build -f Dockerfile -t test-app .
