FROM openjdk:8-alpine
RUN apk --no-cache add curl jq
RUN curl  'https://circleci.com/api/v1.1/project/github/ehabrefaat82/udacity-capstone/200/artifacts' \
    | jq 'map(select(.["path"] == "target/udacity-capstone-0.0.1-SNAPSHOT.jar"))' \
    | jq '.[0]["url"]' \
    | xargs curl -o udacity-capstone-0.0.1-SNAPSHOT.jar \
RUN apk del --purge curl jq
ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]
#ARG target=target
#FROM openjdk:8-jdk-alpine
#ARG target
#WORKDIR $target
#COPY udacity-capstone-0.0.1-SNAPSHOT.jar udacity-capstone-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/udacity-capstone-0.0.1-SNAPSHOT.jar"]