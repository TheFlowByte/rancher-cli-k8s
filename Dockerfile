FROM alpine:3.19 AS kubectl-downloader
ARG KUBECTL_VERSION=v1.28.7
RUN apk add --no-cache curl && \
    curl -L "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" \
      -o /kubectl && \
    chmod +x /kubectl

FROM rancher/cli2:v2.13.0
COPY --from=kubectl-downloader /kubectl /usr/local/bin/kubectl
ENTRYPOINT []
