#!bin/bash

echo "sahilgulati102/mavenapp" > /tmp/.auth
echo "$BUILD_TAG" >>/tmp/.auth

chmod 400 aws.pem
scp -i aws.pem /tmp/.auth ubuntu@3.81.6.80:/tmp/.auth
jenkins/deploy
scp -i aws.pem jenkins/deploy/publish.sh ubuntu@3.81.6.80:publish.sh
ssh -i aws.pem ubuntu@3.81.6.80 "bash publish.sh"
