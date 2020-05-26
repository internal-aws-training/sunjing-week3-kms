#!/bin/bash

cd $(dirname $0)/..

aws kms create-key \
    --tags TagKey=name,TagValue=sj \
    --description "Sun Jing test key" \
    --region ap-southeast-2

#aws kms create-alias \
#    --alias-name alias/sj \
#    --target-key-id ${key-id} \
#    --region ap-southeast-2
