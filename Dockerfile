#ARG build_number=200
FROM openjdk:8-alpine
#ARG build_number
#RUN apk --no-cache add curl jq
#RUN curl 'https://circleci.com/api/v1.1/project/github/ehabrefaat82/udacity-capstone/200/artifacts' | jq '.[0]["url"]' | xargs curl -o udacity-capstone-0.0.1-SNAPSHOT.jar
#RUN COPY udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","udacity-capstone-0.0.1-SNAPSHOT.jar"]
#ARG target=target
#FROM openjdk:8-jdk-alpine
#ARG target
#WORKDIR $target
COPY ~/udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]