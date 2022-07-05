#!/bin/sh
ARGOCD_APP_NAME=gramola-events
DESTINATION_NAME=in-cluster
GIT_URL=https://github.com
GIT_USERNAME=atarazana
BASE_REPO_NAME=gramola-conf
GIT_REVISION=main
helm template ../../helm_base --name-template $ARGOCD_APP_NAME \
  --set debug=${DEBUG},clusterName=${DESTINATION_NAME},gitUrl=${GIT_URL},gitUsername=${GIT_USERNAME},baseRepoName=${BASE_REPO_NAME},gitRevision=${GIT_REVISION} \
  --include-crds > ../../helm_base/all.yml && kustomize build