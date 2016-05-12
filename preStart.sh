#!/bin/sh

# With luck running this will show how we can move persistent volumes with services.


service=%p-%i
metadata='http://169.254.169.254/latest/meta-data/'
echo "Running prestart operation for ${service} $0 $1"

docker pull coco/coco-ebs-vol-manager:latest

instanceId=`curl -s ${metadata}/instance-id`

echo "Setup persistent store for ${service} on ${instanceId}"
