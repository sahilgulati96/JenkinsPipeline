#!bin/bash

echo "Pushing Image"

IMAGE="mavenapp"

echo "Logging In"
echo "$PASS" | docker login -u sahilgulati102 --password-stdin

echo "Pushing Image"
docker push sahilgulati102/mavenapp:$BUILD_TAG
