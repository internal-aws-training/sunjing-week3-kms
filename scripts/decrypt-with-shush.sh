#!/bin/bash

cd $(dirname $0)/..

shush --region ap-southeast-2 decrypt < secret.encrypted > secret.txt
