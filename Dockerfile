FROM java:8 
RUN apt-get update
RUN apt-get install -y maven
WORKDIR ./
ADD pom.xml ./pom.xml
ADD src /src
RUN ["mvn", "package"]
EXPOSE 8080
ADD /target/app.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/app.jar"]
