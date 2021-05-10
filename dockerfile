FROM openjdk:8-jdk-alpine
VOLUME /tem
ADD /target/hellospring-0.0.1-SNAPSHOT.jar /hellospring.jar
EXPOSE 9629
ENTRYPOINT ["java","-jar","/hellospring.jar"]
