FROM amazoncorretto:11-alpine3.14-jdk
WORKDIR /opt/spring
COPY . . 
RUN ["./mvnw", "package"]
WORKDIR /opt/spring/target
CMD ["java", "-jar","testing-web-complete-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080

