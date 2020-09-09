#!/bin/sh
#

export NAME=kops-demo.lab-aws.monetplus.cz
export KOPS_STATE_STORE=s3://monetplus-lab-kops-demo

kops delete cluster ${NAME} --yes

#kops create cluster ${NAME} \
#  --master-zones eu-central-1a,eu-central-1b,eu-central-1c \
#  --zones "eu-central-1a"
#  --zones="eu-central-1a,eu-central-1b,eu-central-1c" \
#  --cloud="aws" \
#  --topology="public" \
#  --cloud-labels="" \
#  --master-count="1" \
#  --master-size="t3a.medium" \
#  --master-volume-size="10" \
#  --node-count="2" \
#  --node-size="t3a.large" \
#  --node-volume-size="50" \
# --values "defaults.yaml" \
  
