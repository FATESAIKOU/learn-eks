#!/usr/bin/env bash

###########
# Install #
###########
helm repo add traefik https://helm.traefik.io/traefik

helm install traefik traefik/traefik
# Or install chart directly
# helm install traefik oci://ghcr.io/traefik/helm/traefik

