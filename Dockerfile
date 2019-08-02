FROM openshift/jenkins-slave-base-centos7

ENV GOROOT=/usr/local/go \
    PATH=/usr/local/go/bin:$PATH \
    GO_VERSION=1.12.7

RUN set -eux; \
    curl https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz -sSf > /tmp/go.tar.gz; \
    tar -xf /tmp/go.tar.gz -C /usr/local; \
    rm /tmp/go.tar.gz;

RUN chown -R 1001:0 $GOROOT; \
    chmod -R g+rw $GOROOT

USER 1001