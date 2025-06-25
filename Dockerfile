#1단계:Maven을 사용하여스프링부트프로젝트빌드
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package-DskipTests
#2단계:빌드된JAR파일을실행할OPENJDK이미지를이용하여Docker이미지생성
FROM openjdk:17-jdk
VOLUME /uploadtest
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT [ "java" ]
CMD ["-jar", "app.jar"]