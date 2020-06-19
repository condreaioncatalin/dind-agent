
FROM centos:7

RUN yum install -y yum-utils
RUN yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

RUN yum install -y docker-ce #&& usermod -g docker jenkins
VOLUME /var/run/docker.sock
#ENTRYPOINT groupmod -g $(stat -c “%g” /var/run/docker.sock) docker && usermod -u $(stat -c “%u” /var/jenkins_home) jenkins && gosu jenkins /bin/tini – /usr/local/bin/jenkins.sh
