# BUDOWANIE PROJEKTU

FROM gradle:8.10-jdk17 as build
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

#Uruchamianie JARA
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
