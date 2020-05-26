#!/bin/bash

cd $(dirname $0)/..

shush --region ap-southeast-2 \
  encrypt a41345de-1fb0-4672-990d-fdc7f90dbfa6 < plain-text > secret.encrypted
