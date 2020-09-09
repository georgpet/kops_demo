#!/bin/sh
#

clusterName=kops-demo.lab-aws.monetplus.cz
stateStore=s3://monetplus-lab-kops-demo
awsRegion=eu-central-1



kops toolbox template --fail-on-missing=false --name "$clusterName" \
  --values "$(dirname $0)/kops-config.yaml" \
  --template "$(dirname $0)/template.kops.yaml" \
  --set "stateStore=$stateStore,awsRegion=$awsRegion,clusterName=$clusterName" \
  --output "$(dirname $0)/cluster.yaml"
#  --format-yaml > "cluster.yaml"
  
kops replace --force -f "$(dirname $0)/cluster.yaml" \
    --state $stateStore