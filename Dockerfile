FROM eclipse-temurin:19

ADD ./ /app/src
WORKDIR /app/src

RUN ./gradlew clean build

COPY /app/src/build/libs/*-SNAPSHOT.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]
