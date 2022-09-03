FROM openjdk:8-alpine@sha256:42ddb992452f7339ada07b673bf8a57a0224fed700b73f387d33259a69a4e876
COPY target/udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
EXPOSE 8070
ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]

#FROM openjdk:20-oraclelinux8
#FROM openjdk:oraclelinux8
