FROM openjdk:16-alpine3.13

COPY ./demo-0.0.1-SNAPSHOT.jar /demo-0.0.1-SNAPSHOT.jar

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
