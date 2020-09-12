#!bin/bash

echo "Pushing Image"

IMAGE="mavenapp"

echo "Logging In"
docker login -u sahilgulati102 -p $PASS
echo "Tagging Image"
docker tag $IMAGE:$BUILD_TAG sahilgulati102/$IMAGE:$BUILD_TAG

echo "Pushing Image"
docker push sahilgulati102/$IMAGE:$BUILD_TAG
