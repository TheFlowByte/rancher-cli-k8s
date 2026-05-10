# rancher-cli-k8s

Rancher v2 CLI with kubectl, packaged as a minimal Alpine image.

[![Build](https://github.com/TheFlowByte/rancher-cli-k8s/actions/workflows/build.yml/badge.svg)](https://github.com/TheFlowByte/rancher-cli-k8s/actions/workflows/build.yml)
[![Latest tag](https://ghcr-badge.egpl.dev/TheFlowByte/rancher-cli-k8s/latest_tag?trim=major&label=latest)](https://github.com/TheFlowByte/rancher-cli-k8s/pkgs/container/rancher-cli-k8s)
[![Image size](https://ghcr-badge.egpl.dev/TheFlowByte/rancher-cli-k8s/size?label=size)](https://github.com/TheFlowByte/rancher-cli-k8s/pkgs/container/rancher-cli-k8s)

Hosted on GitHub Container Registry (`ghcr.io`).

## Supported tags

| Tag | Rancher CLI | kubectl | Recommended Rancher Server |
|-----|-------------|---------|---------------------------|
| `v2.13.0-k8s1.28.7`, `latest` | v2.13.0 | v1.28.7 | 2.11+ |
| `v2.8.4-k8s1.28.7` | v2.8.4 | v1.28.7 | 2.7-2.10 (safe default) |
| `v2.4.11-k8s1.20.15` | v2.4.11 | v1.20.15 | 2.5.x (legacy) |

The image is rebuilt automatically on every push to `master` — see [`.github/workflows/build.yml`](.github/workflows/build.yml).

To rebuild for a different combination, change `rancher/cli2:VERSION` and `KUBECTL_VERSION` in [`Dockerfile`](Dockerfile) and push.

## Pull

```bash
