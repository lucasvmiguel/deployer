FROM ubuntu
LABEL maintainer "Lucas <lucasvieira.dev@gmail.com>"

ENV DOCTL_VERSION 1.31.2
ENV KUBECTL_VERSION v1.16.0
ENV FILENAME deployment.yaml

RUN apt-get update && apt-get install -y curl wget

# INSTALL DIGITAL OCEAN
RUN wget https://github.com/digitalocean/doctl/releases/download/v$DOCTL_VERSION/doctl-$DOCTL_VERSION-linux-amd64.tar.gz && tar xf doctl-$DOCTL_VERSION-linux-amd64.tar.gz && mv doctl /usr/local/bin

# INSTALL KUBECTL
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin

COPY entrypoint.sh .
ENTRYPOINT ["sh", "entrypoint.sh"]

CMD ["bash"]