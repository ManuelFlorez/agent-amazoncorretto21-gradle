FROM amazoncorretto:21

RUN mkdir /opt/gradle

#RUN curl --location --show-error -o gradle-8.9-all.zip "https://services.gradle.org/distributions/gradle-8.9-all.zip" && \
#    yum install -y unzip && \
#    unzip -d /opt/gradle/ gradle-8.9-all.zip && \
#    rm gradle-8.9-all.zip

ENV GRADLE_HOME=/opt/gradle/gradle-8.9

ENV PATH=$PATH:$GRADLE_HOME/bin

#RUN chmod -R 777 /opt/gradle/gradle-8.9/
