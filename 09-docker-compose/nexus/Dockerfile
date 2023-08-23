FROM debian:11
MAINTAINER Pavel Dolbik
ENV TZ="Europe/Minsk"
RUN apt-get update && apt-get install -y ansible rsync curl && ansible-galaxy install ansible-thoteam.nexus3-oss
COPY playbook.yml /tmp/playbook.yml
RUN ansible-playbook /tmp/playbook.yml
EXPOSE 8081
ENTRYPOINT service nexus restart && /bin/bash