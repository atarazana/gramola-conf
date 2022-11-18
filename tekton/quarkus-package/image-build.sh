#!/bin/sh

. ./image-env.sh

podman build -f ./Dockerfile.native.base -t $IMAGE_NAME:$IMAGE_VERSION .