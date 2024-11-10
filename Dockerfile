FROM openjdk:17 AS backend-builder
ADD target/spring-demo-docker.jar spring-demo-docker.jar
ENTRYPOINT [ "java","-jar","/spring-demo-docker.jar" ]

#Below command to reduce docker image size
#FROM openjdk:17-slim
#ADD target/spring-boot-docker.jar spring-boot-docker1.jar
#COPY --from=backend-builder /target .
#COPY .env.sample .env
#ENTRYPOINT [ "java","-jar","/spring-boot-docker.jar" ]
#EXPOSE 8080