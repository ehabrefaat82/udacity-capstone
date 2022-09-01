#FROM openjdk:8-alpine
#COPY udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
#EXPOSE 8070
#ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]

FROM dockerfile/java:oracle-java8
VOLUME /tmp
ADD target/udacity-capstone-0.0.1-SNAPSHOT.jar target/app.jar
RUN bash -c 'touch target/app.jar'
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=local","target/app.jar"]