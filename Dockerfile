FROM java:8 
RUN apt-get update
RUN apt-get install -y maven
WORKDIR ./
ADD pom.xml ./pom.xml
ADD src /src
RUN ["mvn", "package"]
EXPOSE 8080
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]
