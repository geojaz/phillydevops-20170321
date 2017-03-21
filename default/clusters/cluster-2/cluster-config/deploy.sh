#!/bin/bash

###
# single zone, single-master, private network topology
###

export CLUSTER_NAME="cluster-2.kube.moviecite.com"
export ZONES="us-west-2a"

export NODE_COUNT=3
export MASTER_ZONES="us-west-2a"
export DNS_ZONE="kube.moviecite.com"
export MASTER_SIZE="t2.medium"
export NODE_SIZE="t2.micro"

kops delete cluster $CLUSTER_NAME --yes

 exit 1

kops create cluster \
  --cloud aws \
  --state $KOPS_STATE_STORE \
  --node-count $NODE_COUNT \
  --zones $ZONES \
  --master-zones $MASTER_ZONES \
  --node-size $NODE_SIZE \
  --master-size $MASTER_SIZE \
  --name $CLUSTER_NAME \
  --kubernetes-version=1.5.3 \
  --networking weave \
  --topology private \
  --bastion=true \
  --yes
