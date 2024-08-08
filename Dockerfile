FROM amazoncorretto:21

RUN mkdir /opt/gradle

RUN curl --location --show-error -O --url "https://services.gradle.org/distributions/gradle-8.9-all.zip"

RUN yum install unzip -y

RUN unzip -d /opt/gradle/ gradle-8.9-all.zip

ENV GRADLE_HOME=/opt/gradle/gradle-8.9

RUN chmod -R 777 /opt/gradle/gradle-8.9/

ENV PATH=$PATH:$GRADLE_HOME/bin
