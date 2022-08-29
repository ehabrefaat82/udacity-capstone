ARG target=/build
FROM openjdk:8-jdk-alpine
ARG target
WORKDIR $target
RUN ls $target
COPY udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]