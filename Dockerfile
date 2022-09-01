FROM openjdk:8-alpine
COPY udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","udacity-capstone-0.0.1-SNAPSHOT.jar"]