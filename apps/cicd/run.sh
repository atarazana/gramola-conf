#!/bin/sh
ARGOCD_APP_NAME=gramola-events
GIT_URL=https://github.com
GIT_USERNAME=atarazana
BASE_REPO_NAME=gramola-conf
GIT_REVISION=main
helm template . --name-template ${ARGOCD_APP_NAME} \
  --set debug=${DEBUG},clusterName=${DESTINATION_NAME},gitUrl=${GIT_URL},gitUsername=${GIT_USERNAME},baseRepoName=${BASE_REPO_NAME},gitRevision=${GIT_REVISION} \
  --include-crds