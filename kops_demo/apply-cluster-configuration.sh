#!/bin/sh
#

export NAME=kops-demo.lab-aws.monetplus.cz
export KOPS_STATE_STORE=s3://monetplus-lab-kops-demo


kops update cluster ${NAME} --yes
kops validate cluster ${NAME} --wait 20m