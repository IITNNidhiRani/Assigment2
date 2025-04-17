#!/bin/bash
gcloud compute instance-groups managed create web-instance-group \
  --base-instance-name=web-instance \
  --size=1 \
  --template=web-template \
  --zone=us-central1-a
