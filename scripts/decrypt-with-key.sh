#!/bin/bash

cd $(dirname $0)/..

aws --region ap-southeast-2  kms decrypt \
    --ciphertext-blob fileb://encrypt-text \
    --output text \
    --query Plaintext | base64 --decode > a-encrypted-file
