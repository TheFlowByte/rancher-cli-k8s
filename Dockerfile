FROM rancher/cli2:v2.13.0

ARG KUBECTL_VERSION=v1.28.7

RUN apk add --no-cache curl ca-certificates && \
    curl -L "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
      -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    kubectl version --client

ENTRYPOINT []
