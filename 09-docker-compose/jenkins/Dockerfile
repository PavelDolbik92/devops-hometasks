FROM jenkins/jenkins
MAINTAINER Pavel Dolbik
ENV TZ="Europe/Minsk"
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
USER root
RUN apt-get update && apt-get install -y build-essential
USER jenkins
COPY --chown=jenkins:jenkins 01-admin-user-init.groovy /var/jenkins_home/init.groovy.d/01-admin-user-init.groovy
COPY --chown=jenkins:jenkins jenkins.yaml /var/jenkins_home/jenkins.yaml
COPY --chown=jenkins:jenkins wcg-job-config.xml /var/jenkins_home/jobs/wcg-pipeline-job/config.xml
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
EXPOSE 8080
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt