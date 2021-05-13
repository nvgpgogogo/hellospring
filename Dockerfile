FROM openjdk:8-jdk-alpine
VOLUME /tem
ADD http://console-poc666.netease.com/download/nsf/nsf-agent-v2.6.6-ae06cc43-20200417-150504.jar /nsf-agent.jar
ADD /target/hellospring-0.0.1-SNAPSHOT.jar /hellospring.jar
EXPOSE 9629
ENTRYPOINT ["java","-javaagent:/nsf-agent.jar=hello","-jar","/hellospring.jar"]
