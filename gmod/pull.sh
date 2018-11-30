#!/bin/bash
TAG=$1

if [ -z "$TAG" ]; then
    echo "Usage: ./pull.sh <image-name>:<tag-version>"
    exit 1
fi

# Get AWS ECR creds
$(aws ecr get-login --no-include-email --region eu-west-1)

# Tag and push tag
docker pull 517511976823.dkr.ecr.eu-west-1.amazonaws.com/${TAG}
