#!/bin/bash
gcloud compute firewall-rules create allow-http-ssh \
  --allow tcp:22,tcp:80,tcp:443 \
  --target-tags web-server \
  --source-ranges 0.0.0.0/0

