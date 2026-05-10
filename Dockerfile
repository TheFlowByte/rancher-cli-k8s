FROM lachlanevenson/k8s-kubectl:v1.28.7 AS k8scli
FROM rancher/cli2:v2.13.0
COPY --from=k8scli /usr/local/bin/kubectl /usr/local/bin
ENTRYPOINT []
