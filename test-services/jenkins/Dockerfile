ARG JENKINS_VERSION=alpine
FROM jenkins:${JENKINS_VERSION}
COPY metrics.groovy /usr/share/jenkins/ref/init.groovy.d/metrics.groovy
COPY install.sh /install.sh
RUN bash /install.sh

ARG JENKINS_PORT

ENV JENKINS_OPTS --httpPort=${JENKINS_PORT}
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
EXPOSE ${JENKINS_PORT}
