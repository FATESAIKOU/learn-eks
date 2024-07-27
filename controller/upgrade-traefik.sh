#!/usr/bin/env bash

###########
# Upgrade #
###########
helm repo update

helm upgrade traefik traefik/traefik
