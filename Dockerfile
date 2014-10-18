FROM jahroots/java
MAINTAINER Jahroots "Jahroots@gmail.com"

RUN apt-get update && apt-get install -y unzip
RUN curl -OL http://dl.bintray.com/jfrog/artifactory/artifactory-3.4.0.zip
RUN unzip artifactory-3.4.0.zip
RUN rm artifactory-3.4.0.zip

EXPOSE 8081
VOLUME ["/artifactory-3.4.0"]
CMD ["/artifactory-3.4.0/bin/artifactoryctl", "start"]