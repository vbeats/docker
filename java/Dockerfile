FROM openjdk:8
LABEL author="bootvue@gmail.com"
COPY sentinel-dashboard-1.8.0.jar sentinel.jar
EXPOSE 8080/tcp
ENTRYPOINT [ "java", "-Dserver.port=8080", "-Dcsp.sentinel.dashboard.server=localhost:8080" ,"-Dproject.name=sentinel-dashboard","-jar","sentinel.jar"]