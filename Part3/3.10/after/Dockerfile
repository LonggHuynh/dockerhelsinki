
FROM openjdk:11 as build

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package



#------
FROM openjdk:jre-alpine

WORKDIR /app

COPY --from=build /usr/src/app/target/docker-example-1.1.3.jar /app/

RUN addgroup -S appuser && adduser -S -G appuser appuser && \ 
    chown -R appuser:appuser /app

USER appuser

EXPOSE 8080

CMD ["java", "-jar", "docker-example-1.1.3.jar"]
