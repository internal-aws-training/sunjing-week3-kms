#!/bin/bash

cd $(dirname $0)/..

TEMPLATE=template
NAME=trail-key

echo "deploy stack: ${TEMPLATE}, stack name is ${NAME}"
aws cloudformation deploy\
  --stack-name ${NAME}\
  --template-file ./aws/${TEMPLATE}.yml\
  --region ap-southeast-2\
  --capabilities CAPABILITY_IAM


