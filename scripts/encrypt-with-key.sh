#!/bin/bash

cd $(dirname $0)/..

aws --region ap-southeast-2 kms encrypt \
    --key-id a41345de-1fb0-4672-990d-fdc7f90dbfa6 \
    --plaintext fileb://plain-text \
    --output text \
    --query CiphertextBlob | base64 \
    --decode > encrypt-text
