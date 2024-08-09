FROM amazoncorretto:21

RUN yum install -y wget unzip

ENV GRADLE_VERSION=8.9
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -O /tmp/gradle.zip && \
    unzip /tmp/gradle.zip -d /opt && \
    rm /tmp/gradle.zip


ENV GRADLE_HOME=/opt/gradle-${GRADLE_VERSION}
ENV PATH="${PATH}:${GRADLE_HOME}/bin"

