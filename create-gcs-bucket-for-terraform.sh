#!/bin/sh

PROJECT_NAME=bf-azure-uat
COMPUTE_ZONE=asia-east1-a

gcloud config set project ${PROJECT_NAME}
gcloud config set compute/zone ${COMPUTE_ZONE}

gsutil mb -p ${PROJECT_NAME} -c NEARLINE -l ASIA-EAST1 -b on gs://${PROJECT_NAME}-terraform-state
