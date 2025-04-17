#!/bin/bash
gcloud projects add-iam-policy-binding YOUR_PROJECT_ID \
  --member='user:nidhirani7004@gmail.com' \
  --role='roles/compute.viewer'
