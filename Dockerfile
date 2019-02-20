FROM kalranitin/centos72-jre8

MAINTAINER Satheesh B "satheesh442@gmail.com"

EXPOSE 8080

USER root

WORKDIR /caac

# Set default options
ENV JAVA_OPTS="-XX:MinHeapFreeRatio=30 -XX:MaxHeapFreeRatio=50"

COPY target/my-app*.jar my-app.jar

CMD ["java", "-jar", "my-app.jar"]
#From Develop.
