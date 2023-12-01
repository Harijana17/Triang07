FROM java:8

EXPOSE 8080

ADD /target/TriangleMaven-0.0.1-SNAPSHOT.jar TriangleMaven-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","TriangleMaven-0.0.1-SNAPSHOT.jar"]

