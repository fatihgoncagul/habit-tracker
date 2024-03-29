FROM maven:3-amazoncorretto-21

WORKDIR /usr/src/app
COPY . .

RUN mvn clean package

FROM amazoncorretto:21-alpine3.16-jdk
COPY --from=build /usr/src/app/target/habit-tracker-v2-0.0.1-SNAPSHOT.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]