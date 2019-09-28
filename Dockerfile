FROM openshift/jenkins-slave-base-centos7

RUN set -eux && \
    curl -sL https://rpm.nodesource.com/setup_8.x | bash - && \
    yum install -y nodejs

USER 1001
