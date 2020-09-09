#!/bin/sh
#

export NAME=kops-demo.lab-aws.monetplus.cz
export KOPS_STATE_STORE=s3://monetplus-lab-kops-demo


kops create cluster \
  --zones=eu-central-1a,eu-central-1b,eu-central-1c \
  ${NAME}