FROM java:8 
RUN apt-get update
RUN apt-get install -y maven
EXPOSE 8080
ADD /target/app.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
