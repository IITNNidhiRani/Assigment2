#!/bin/bash
gcloud compute instance-templates create web-template \
  --machine-type=e2-medium \
  --image-family=ubuntu-2004-lts \
  --image-project=ubuntu-os-cloud \
  --tags=web-server \
  --boot-disk-size=10GB
