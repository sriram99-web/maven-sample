FROM java:8-jdk-alpine

COPY ./target/Application-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch Application-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","Application-0.0.1-SNAPSHOT.jar"]