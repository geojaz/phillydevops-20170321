#!/bin/bash

###
# Existing VPC, Multiple zone, HA-master, private network topology
###

export CLUSTER_NAME="cluster-3.kube.moviecite.com"
export ZONES="us-west-2a,us-west-2b,us-west-2c"

export NODE_COUNT=3
export MASTER_ZONES="us-west-2a,us-west-2b,us-west-2c"
export DNS_ZONE="kube.moviecite.com"
export MASTER_SIZE="t2.medium"
export NODE_SIZE="t2.micro"
export VPC_ID="vpc-2083c447"

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
  --vpc $VPC_ID \


###
# Networking config:
###

  # subnets:
  # - cidr: 172.20.16.0/24
  #   egress: nat-0411863eeddde62e4
  #   name: us-west-2a
  #   type: Private
  #   zone: us-west-2a
  # - cidr: 172.20.17.0/24
  #   egress: nat-03df5a57593c7cc4d
  #   name: us-west-2b
  #   type: Private
  #   zone: us-west-2b
  # - cidr: 172.20.18.0/24
  #   egress: nat-017526670ac78f3f1
  #   name: us-west-2c
  #   type: Private
  #   zone: us-west-2c
  # - cidr: 172.20.20.0/24
  #   name: utility-us-west-2a
  #   type: Utility
  #   zone: us-west-2a
  # - cidr: 172.20.21.0/24
  #   name: utility-us-west-2b
  #   type: Utility
  #   zone: us-west-2b
  # - cidr: 172.20.22.0/24
  #   name: utility-us-west-2c
  #   type: Utility
  #   zone: us-west-2c

