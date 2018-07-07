#!/bin/sh
set -e
# This script is meant for quick & easy install via:
# docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
# on ubuntu
ExecStart=/usr/bin/dockerd --insecure-registry 172.30.0.0/16 -H fd://
sudo systemctl daemon-reload
sudo systemctl restart docker
# oc run
export OC_CLUSTER_PUBLIC_HOSTNAME=127.0.0.1
oc-cluster up
